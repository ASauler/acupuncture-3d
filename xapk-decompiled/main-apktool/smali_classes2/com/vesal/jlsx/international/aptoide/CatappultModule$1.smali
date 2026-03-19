.class Lcom/vesal/jlsx/international/aptoide/CatappultModule$1;
.super Ljava/lang/Object;
.source "CatappultModule.java"

# interfaces
.implements Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vesal/jlsx/international/aptoide/CatappultModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/aptoide/CatappultModule;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$1;->this$0:Lcom/vesal/jlsx/international/aptoide/CatappultModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "CatappultModule_tag"

    const-string v1, "onBillingServiceDisconnected Disconnected"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/aptoide/sdk/billing/BillingResult;)V
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problem setting up in-app billing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CatappultModule_tag"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$1;->this$0:Lcom/vesal/jlsx/international/aptoide/CatappultModule;

    invoke-static {p1}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->-$$Nest$mcheckPurchases(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V

    const-string p1, "Setup successful. Querying inventory."

    .line 53
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
