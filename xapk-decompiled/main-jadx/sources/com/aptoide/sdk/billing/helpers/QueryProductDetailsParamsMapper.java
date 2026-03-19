package com.aptoide.sdk.billing.helpers;

import com.aptoide.sdk.billing.QueryProductDetailsParams;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueryProductDetailsParamsMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper;", "", "()V", "getProductIdFromQueryProductDetailsParams", "", "queryProductDetailsParams", "Lcom/aptoide/sdk/billing/QueryProductDetailsParams;", "mapProductDetailsListToProductIdsList", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryProductDetailsParamsMapper {
    public final List<String> mapProductDetailsListToProductIdsList(QueryProductDetailsParams queryProductDetailsParams) {
        Intrinsics.checkNotNullParameter(queryProductDetailsParams, "queryProductDetailsParams");
        List<QueryProductDetailsParams.Product> productList = queryProductDetailsParams.getProductList();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(productList, 10));
        Iterator<T> it = productList.iterator();
        while (it.hasNext()) {
            arrayList.add(((QueryProductDetailsParams.Product) it.next()).getProductId());
        }
        return arrayList;
    }

    public final String getProductIdFromQueryProductDetailsParams(QueryProductDetailsParams queryProductDetailsParams) {
        Intrinsics.checkNotNullParameter(queryProductDetailsParams, "queryProductDetailsParams");
        return ((QueryProductDetailsParams.Product) CollectionsKt.first((List) queryProductDetailsParams.getProductList())).getProductType();
    }
}
