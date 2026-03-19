package com.aptoide.sdk.billing;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueryProductDetailsResult.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB#\b\u0002\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/QueryProductDetailsResult;", "", "productDetailsList", "", "Lcom/aptoide/sdk/billing/ProductDetails;", "unfetchedProductList", "Lcom/aptoide/sdk/billing/UnfetchedProduct;", "(Ljava/util/List;Ljava/util/List;)V", "getProductDetailsList", "()Ljava/util/List;", "getUnfetchedProductList", "Companion", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryProductDetailsResult {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<ProductDetails> productDetailsList;
    private final List<UnfetchedProduct> unfetchedProductList;

    public /* synthetic */ QueryProductDetailsResult(List list, List list2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2);
    }

    private QueryProductDetailsResult(List<ProductDetails> list, List<UnfetchedProduct> list2) {
        this.productDetailsList = list;
        this.unfetchedProductList = list2;
    }

    public final List<ProductDetails> getProductDetailsList() {
        return this.productDetailsList;
    }

    public final List<UnfetchedProduct> getUnfetchedProductList() {
        return this.unfetchedProductList;
    }

    /* JADX INFO: compiled from: QueryProductDetailsResult.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006H\u0001¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;", "", "()V", "create", "Lcom/aptoide/sdk/billing/QueryProductDetailsResult;", "productDetailsList", "", "Lcom/aptoide/sdk/billing/ProductDetails;", "unfetchedProductList", "Lcom/aptoide/sdk/billing/UnfetchedProduct;", "create$aptoide_billing_release", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final QueryProductDetailsResult create$aptoide_billing_release(List<ProductDetails> productDetailsList, List<UnfetchedProduct> unfetchedProductList) {
            Intrinsics.checkNotNullParameter(productDetailsList, "productDetailsList");
            Intrinsics.checkNotNullParameter(unfetchedProductList, "unfetchedProductList");
            return new QueryProductDetailsResult(productDetailsList, unfetchedProductList, null);
        }
    }
}
