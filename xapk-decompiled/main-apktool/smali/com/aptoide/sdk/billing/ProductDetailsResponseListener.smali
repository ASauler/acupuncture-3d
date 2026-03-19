.class public interface abstract Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;
.super Ljava/lang/Object;
.source "ProductDetailsResponseListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00e6\u0080\u0001\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;",
        "",
        "onProductDetailsResponse",
        "",
        "billingResult",
        "Lcom/aptoide/sdk/billing/BillingResult;",
        "productDetailsResult",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsResult;",
        "aptoide-billing_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onProductDetailsResponse(Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V
.end method
