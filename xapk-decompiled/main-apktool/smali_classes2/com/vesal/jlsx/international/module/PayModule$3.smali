.class Lcom/vesal/jlsx/international/module/PayModule$3;
.super Ljava/lang/Object;
.source "PayModule.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/module/PayModule;->query(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/module/PayModule;

.field final synthetic val$orderNo:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$resultCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/module/PayModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    iput-object p2, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->val$productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->val$orderNo:Ljava/lang/String;

    iput-object p4, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->val$resultCallback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "google_pay"

    const-string v1, "onBillingServiceDisconnected() called"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->val$resultCallback:Lcom/facebook/react/bridge/Callback;

    const-string v1, "-2"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBillingSetupFinished() called with: billingResult = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "google_pay"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->val$productId:Ljava/lang/String;

    iget-object v1, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->val$orderNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/vesal/jlsx/international/module/PayModule$3;->val$resultCallback:Lcom/facebook/react/bridge/Callback;

    invoke-static {p1, v0, v1, v2}, Lcom/vesal/jlsx/international/module/PayModule;->-$$Nest$monGoogleQuery(Lcom/vesal/jlsx/international/module/PayModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method
