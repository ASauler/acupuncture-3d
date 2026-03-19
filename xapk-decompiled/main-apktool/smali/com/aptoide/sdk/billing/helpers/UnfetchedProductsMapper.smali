.class public final Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;
.super Ljava/lang/Object;
.source "UnfetchedProductsMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnfetchedProductsMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnfetchedProductsMapper.kt\ncom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,21:1\n1549#2:22\n1620#2,3:23\n*S KotlinDebug\n*F\n+ 1 UnfetchedProductsMapper.kt\ncom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper\n*L\n12#1:22\n12#1:23,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0004H\u0000\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;",
        "",
        "()V",
        "getUnfetchedProducts",
        "",
        "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
        "queryProductsList",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
        "productDetailsResultList",
        "Lcom/aptoide/sdk/billing/ProductDetails;",
        "getUnfetchedProducts$aptoide_billing_release",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUnfetchedProducts$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;",
            ">;",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/ProductDetails;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/UnfetchedProduct;",
            ">;"
        }
    .end annotation

    const-string v0, "queryProductsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productDetailsResultList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast p2, Ljava/lang/Iterable;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 23
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    check-cast v1, Lcom/aptoide/sdk/billing/ProductDetails;

    .line 12
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 22
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 14
    check-cast p1, Ljava/lang/Iterable;

    .line 15
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$1;

    invoke-direct {v0, p2}, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$1;-><init>(Ljava/util/Set;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 17
    sget-object p2, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper$getUnfetchedProducts$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
