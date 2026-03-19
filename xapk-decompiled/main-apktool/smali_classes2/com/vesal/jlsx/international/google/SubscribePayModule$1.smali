.class Lcom/vesal/jlsx/international/google/SubscribePayModule$1;
.super Ljava/lang/Object;
.source "SubscribePayModule.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vesal/jlsx/international/google/SubscribePayModule;
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

    .line 50
    iput-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPurchasesUpdated() called with: billingResult = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], purchases = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google_pay"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 58
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&oid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Lcom/vesal/jlsx/international/utils/DeviceInfo;

    invoke-direct {v3}, Lcom/vesal/jlsx/international/utils/DeviceInfo;-><init>()V

    iget-object v4, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-static {v4}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->access$000(Lcom/vesal/jlsx/international/google/SubscribePayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vesal/jlsx/international/utils/DeviceInfo;->getInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onPayLogRecord(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/vesal/jlsx/international/utils/DeviceInfo;

    invoke-direct {v4}, Lcom/vesal/jlsx/international/utils/DeviceInfo;-><init>()V

    iget-object v5, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-static {v5}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->access$100(Lcom/vesal/jlsx/international/google/SubscribePayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vesal/jlsx/international/utils/DeviceInfo;->getInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onPayLogRecord(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    if-nez p2, :cond_3

    move-object p2, v0

    .line 77
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "buy success == "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_7

    .line 91
    iget-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->-$$Nest$mpayFinish(Lcom/vesal/jlsx/international/google/SubscribePayModule;ILjava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-static {p1, p2}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->-$$Nest$mconsume(Lcom/vesal/jlsx/international/google/SubscribePayModule;Lcom/android/billingclient/api/Purchase;)V

    goto :goto_3

    .line 95
    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 97
    iget-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->-$$Nest$mpayFinish(Lcom/vesal/jlsx/international/google/SubscribePayModule;I)V

    goto :goto_3

    .line 100
    :cond_6
    iget-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-static {p1, v2}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->-$$Nest$mpayFinish(Lcom/vesal/jlsx/international/google/SubscribePayModule;I)V

    :cond_7
    :goto_3
    return-void
.end method
