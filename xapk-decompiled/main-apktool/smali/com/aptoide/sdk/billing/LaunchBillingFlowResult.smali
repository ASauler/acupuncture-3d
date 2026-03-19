.class public Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;
.super Ljava/lang/Object;
.source "LaunchBillingFlowResult.java"


# instance fields
.field private final buyIntent:Landroid/content/Intent;

.field private final responseCode:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->responseCode:I

    .line 11
    iput-object p2, p0, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->buyIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getBuyIntent()Landroid/content/Intent;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->buyIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->responseCode:I

    return v0
.end method
