.class Lcom/vesal/jlsx/international/module/PayModule$1;
.super Ljava/lang/Object;
.source "PayModule.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vesal/jlsx/international/module/PayModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/module/PayModule;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/module/PayModule;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$1;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

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

    .line 52
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

    .line 54
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 56
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

    iget-object v4, p0, Lcom/vesal/jlsx/international/module/PayModule$1;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    invoke-static {v4}, Lcom/vesal/jlsx/international/module/PayModule;->access$000(Lcom/vesal/jlsx/international/module/PayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

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

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/vesal/jlsx/international/utils/DeviceInfo;

    invoke-direct {v4}, Lcom/vesal/jlsx/international/utils/DeviceInfo;-><init>()V

    iget-object v5, p0, Lcom/vesal/jlsx/international/module/PayModule$1;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    invoke-static {v5}, Lcom/vesal/jlsx/international/module/PayModule;->access$100(Lcom/vesal/jlsx/international/module/PayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vesal/jlsx/international/utils/DeviceInfo;->getInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onPayLogRecord(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 71
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule$1;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/vesal/jlsx/international/module/PayModule;->-$$Nest$mpayFinish(Lcom/vesal/jlsx/international/module/PayModule;ILjava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "buy success == "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule$1;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    invoke-static {v0, p2}, Lcom/vesal/jlsx/international/module/PayModule;->-$$Nest$mconsume(Lcom/vesal/jlsx/international/module/PayModule;Lcom/android/billingclient/api/Purchase;)V

    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 88
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$1;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/vesal/jlsx/international/module/PayModule;->-$$Nest$mpayFinish(Lcom/vesal/jlsx/international/module/PayModule;I)V

    goto :goto_3

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$1;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    invoke-static {p1, v2}, Lcom/vesal/jlsx/international/module/PayModule;->-$$Nest$mpayFinish(Lcom/vesal/jlsx/international/module/PayModule;I)V

    :cond_5
    :goto_3
    return-void
.end method
