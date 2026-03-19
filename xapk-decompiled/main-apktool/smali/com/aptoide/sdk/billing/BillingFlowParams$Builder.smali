.class public final Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "BillingFlowParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBillingFlowParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingFlowParams.kt\ncom/aptoide/sdk/billing/BillingFlowParams$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0004J\u0014\u0010\u0011\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;",
        "",
        "()V",
        "developerPayload",
        "",
        "freeTrial",
        "",
        "Ljava/lang/Boolean;",
        "obfuscatedAccountId",
        "productDetailsParamsList",
        "",
        "Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;",
        "build",
        "Lcom/aptoide/sdk/billing/BillingFlowParams;",
        "setDeveloperPayload",
        "setFreeTrial",
        "setObfuscatedAccountId",
        "setProductDetailsParamsList",
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
.field private developerPayload:Ljava/lang/String;

.field private freeTrial:Ljava/lang/Boolean;

.field private obfuscatedAccountId:Ljava/lang/String;

.field private productDetailsParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->productDetailsParamsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/aptoide/sdk/billing/BillingFlowParams;
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->productDetailsParamsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 51
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->productDetailsParamsList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;->getProductDetails()Lcom/aptoide/sdk/billing/ProductDetails;

    move-result-object v0

    .line 55
    new-instance v7, Lcom/aptoide/sdk/billing/BillingFlowParams;

    .line 56
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->developerPayload:Ljava/lang/String;

    .line 59
    iget-object v5, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->obfuscatedAccountId:Ljava/lang/String;

    .line 60
    iget-object v6, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->freeTrial:Ljava/lang/Boolean;

    move-object v1, v7

    .line 55
    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/billing/BillingFlowParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v7

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProductDetailsParams list must not be empty."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProductDetailsParams list must be provided."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setDeveloperPayload(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated parameter. DeveloperPayload should not be used to identify Purchases. Use instead the purchaseToken. If needed to identify the User use the [obfuscatedAccountId] parameter."
    .end annotation

    const-string v0, "developerPayload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 32
    iput-object p1, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->developerPayload:Ljava/lang/String;

    return-object p0

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Developer Payload must not be empty. Use null if not necessary"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFreeTrial(Z)Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;
    .locals 0

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->freeTrial:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setObfuscatedAccountId(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;
    .locals 1

    const-string v0, "obfuscatedAccountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    iput-object p1, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->obfuscatedAccountId:Ljava/lang/String;

    return-object p0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Obfuscated Account ID must not be empty. Use null if not necessary"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setProductDetailsParamsList(Ljava/util/List;)Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;",
            ">;)",
            "Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;"
        }
    .end annotation

    const-string v0, "productDetailsParamsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 20
    iput-object p1, p0, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->productDetailsParamsList:Ljava/util/List;

    return-object p0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one product is supported."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Product list must not be empty."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
