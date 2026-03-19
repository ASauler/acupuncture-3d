.class public final Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;
.super Ljava/lang/Object;
.source "BillingFlowParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;",
        "",
        "()V",
        "productDetails",
        "Lcom/aptoide/sdk/billing/ProductDetails;",
        "build",
        "Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;",
        "setProductDetails",
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


# instance fields
.field private productDetails:Lcom/aptoide/sdk/billing/ProductDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;->productDetails:Lcom/aptoide/sdk/billing/ProductDetails;

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;->productDetails:Lcom/aptoide/sdk/billing/ProductDetails;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;-><init>(Lcom/aptoide/sdk/billing/ProductDetails;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProductDetails is required for constructing ProductDetailsParams."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setProductDetails(Lcom/aptoide/sdk/billing/ProductDetails;)Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;
    .locals 1

    const-string v0, "productDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;->productDetails:Lcom/aptoide/sdk/billing/ProductDetails;

    return-object p0
.end method
