package com.aptoide.sdk.billing.helpers;

import com.aptoide.sdk.billing.ProductDetails;
import com.aptoide.sdk.billing.QueryProductDetailsParams;
import com.aptoide.sdk.billing.UnfetchedProduct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: UnfetchedProductsMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004H\u0000¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;", "", "()V", "getUnfetchedProducts", "", "Lcom/aptoide/sdk/billing/UnfetchedProduct;", "queryProductsList", "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;", "productDetailsResultList", "Lcom/aptoide/sdk/billing/ProductDetails;", "getUnfetchedProducts$aptoide_billing_release", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnfetchedProductsMapper {
    public final List<UnfetchedProduct> getUnfetchedProducts$aptoide_billing_release(List<QueryProductDetailsParams.Product> queryProductsList, List<ProductDetails> productDetailsResultList) {
        Intrinsics.checkNotNullParameter(queryProductsList, "queryProductsList");
        Intrinsics.checkNotNullParameter(productDetailsResultList, "productDetailsResultList");
        List<ProductDetails> list = productDetailsResultList;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ProductDetails) it.next()).getProductId());
        }
        final Set set = CollectionsKt.toSet(arrayList);
        return SequencesKt.toList(SequencesKt.map(SequencesKt.filterNot(CollectionsKt.asSequence(queryProductsList), new Function1<QueryProductDetailsParams.Product, Boolean>() { // from class: com.aptoide.sdk.billing.helpers.UnfetchedProductsMapper$getUnfetchedProducts$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(QueryProductDetailsParams.Product it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(set.contains(it2.getProductId()));
            }
        }), new Function1<QueryProductDetailsParams.Product, UnfetchedProduct>() { // from class: com.aptoide.sdk.billing.helpers.UnfetchedProductsMapper$getUnfetchedProducts$2
            @Override // kotlin.jvm.functions.Function1
            public final UnfetchedProduct invoke(QueryProductDetailsParams.Product it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new UnfetchedProduct(it2.getProductId(), it2.getProductType(), 3);
            }
        }));
    }
}
