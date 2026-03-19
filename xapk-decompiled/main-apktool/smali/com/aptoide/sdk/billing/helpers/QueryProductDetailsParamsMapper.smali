.class public final Lcom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper;
.super Ljava/lang/Object;
.source "QueryProductDetailsParamsMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryProductDetailsParamsMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryProductDetailsParamsMapper.kt\ncom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,12:1\n1549#2:13\n1620#2,3:14\n*S KotlinDebug\n*F\n+ 1 QueryProductDetailsParamsMapper.kt\ncom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper\n*L\n7#1:13\n7#1:14,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00082\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper;",
        "",
        "()V",
        "getProductIdFromQueryProductDetailsParams",
        "",
        "queryProductDetailsParams",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams;",
        "mapProductDetailsListToProductIdsList",
        "",
        "android-aptoide-billing_release"
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProductIdFromQueryProductDetailsParams(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;)Ljava/lang/String;
    .locals 1

    const-string v0, "queryProductDetailsParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->getProductList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->getProductType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final mapProductDetailsListToProductIdsList(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/QueryProductDetailsParams;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "queryProductDetailsParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->getProductList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    .line 7
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->getProductId()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
