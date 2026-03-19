.class Lcom/vesal/jlsx/international/google/SubscribePayModule$6$1;
.super Ljava/lang/Object;
.source "SubscribePayModule.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/google/SubscribePayModule$6;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vesal/jlsx/international/google/SubscribePayModule$6;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/google/SubscribePayModule$6;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$6$1;->this$1:Lcom/vesal/jlsx/international/google/SubscribePayModule$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "query order res == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google_pay"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1

    .line 278
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 279
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onGooglePayConsumeCallback(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$6$1;->this$1:Lcom/vesal/jlsx/international/google/SubscribePayModule$6;

    iget-object v0, v0, Lcom/vesal/jlsx/international/google/SubscribePayModule$6;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-static {v0, p2}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->-$$Nest$mconsume(Lcom/vesal/jlsx/international/google/SubscribePayModule;Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_1
    return-void
.end method
