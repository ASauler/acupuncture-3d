.class Lcom/vesal/jlsx/international/module/PayModule$2;
.super Ljava/lang/Object;
.source "PayModule.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/module/PayModule;->connect()V
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

    .line 120
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule$2;->this$0:Lcom/vesal/jlsx/international/module/PayModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "google_pay"

    const-string v1, "onBillingServiceDisconnected() called"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    .line 137
    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onGoogleServiceConnected(Ljava/lang/String;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBillingSetupFinished() called with: billingResult = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google_pay"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "1"

    .line 126
    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onGoogleServiceConnected(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 128
    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onGoogleServiceConnected(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
