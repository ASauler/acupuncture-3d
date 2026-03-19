.class public final synthetic Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/vesal/jlsx/international/aptoide/CatappultModule;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda5;->f$0:Lcom/vesal/jlsx/international/aptoide/CatappultModule;

    iput-object p2, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V
    .locals 2

    iget-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda5;->f$0:Lcom/vesal/jlsx/international/aptoide/CatappultModule;

    iget-object v1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->$r8$lambda$zbaGwI3ONDibzxq69Olfc47FDG8(Lcom/vesal/jlsx/international/aptoide/CatappultModule;Ljava/lang/String;Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V

    return-void
.end method
