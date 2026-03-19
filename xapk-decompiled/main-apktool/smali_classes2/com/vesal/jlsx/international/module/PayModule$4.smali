.class Lcom/vesal/jlsx/international/module/PayModule$4;
.super Ljava/lang/Object;
.source "PayModule.java"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/module/PayModule;->onGoogleQuery(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/module/PayModule;

.field final synthetic val$orderNo:Ljava/lang/String;

.field final synthetic val$resultCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/module/PayModule;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$4;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    iput-object p2, p0, Lcom/vesal/jlsx/international/module/PayModule$4;->val$orderNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/vesal/jlsx/international/module/PayModule$4;->val$resultCallback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProductDetailsResponse() called with: billingResult = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], productDetailsList = ["

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

    .line 186
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onProductDetailsResponse"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$4;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule$4;->val$orderNo:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/vesal/jlsx/international/module/PayModule;->buy(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$4;->val$resultCallback:Lcom/facebook/react/bridge/Callback;

    const-string p2, "-1"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object p2, p0, Lcom/vesal/jlsx/international/module/PayModule$4;->val$resultCallback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
