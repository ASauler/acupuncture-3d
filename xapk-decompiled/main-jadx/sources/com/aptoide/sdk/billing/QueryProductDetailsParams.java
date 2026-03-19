package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueryProductDetailsParams.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \t2\u00020\u0001:\u0003\b\t\nB\u0015\b\u0002\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/QueryProductDetailsParams;", "", "productList", "", "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;", "(Ljava/util/List;)V", "getProductList", "()Ljava/util/List;", "Builder", "Companion", "Product", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryProductDetailsParams {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<Product> productList;

    public /* synthetic */ QueryProductDetailsParams(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }

    @JvmStatic
    public static final Builder newBuilder() {
        return INSTANCE.newBuilder();
    }

    private QueryProductDetailsParams(List<Product> list) {
        this.productList = list;
    }

    public final List<Product> getProductList() {
        return this.productList;
    }

    /* JADX INFO: compiled from: QueryProductDetailsParams.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Companion;", "", "()V", InAppPurchaseConstants.METHOD_NEW_BUILDER, "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Builder newBuilder() {
            return new Builder();
        }
    }

    /* JADX INFO: compiled from: QueryProductDetailsParams.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;", "", "()V", "productList", "", "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;", InAppPurchaseConstants.METHOD_BUILD, "Lcom/aptoide/sdk/billing/QueryProductDetailsParams;", InAppPurchaseConstants.METHOD_SET_PRODUCT_LIST, "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private List<Product> productList = CollectionsKt.emptyList();

        public final Builder setProductList(List<Product> productList) {
            Intrinsics.checkNotNullParameter(productList, "productList");
            if (!(!productList.isEmpty())) {
                throw new IllegalArgumentException("Product list must not be empty.".toString());
            }
            List<Product> list = productList;
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (hashSet.add(((Product) obj).getProductType())) {
                    arrayList.add(obj);
                }
            }
            if (!(arrayList.size() == 1)) {
                throw new IllegalArgumentException("All products must be of the same type.".toString());
            }
            HashSet hashSet2 = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : list) {
                if (hashSet2.add(((Product) obj2).getProductId())) {
                    arrayList2.add(obj2);
                }
            }
            if (!(arrayList2.size() == productList.size())) {
                throw new IllegalArgumentException("Product id should not be repeated.".toString());
            }
            this.productList = productList;
            return this;
        }

        public final QueryProductDetailsParams build() {
            if (!(!this.productList.isEmpty())) {
                throw new IllegalArgumentException("Product list must not be empty.".toString());
            }
            return new QueryProductDetailsParams(this.productList, null);
        }
    }

    /* JADX INFO: compiled from: QueryProductDetailsParams.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \n2\u00020\u0001:\u0002\t\nB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;", "", "productId", "", PurchaseData.PRODUCT_TYPE, "(Ljava/lang/String;Ljava/lang/String;)V", "getProductId", "()Ljava/lang/String;", "getProductType", "Builder", "Companion", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Product {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String productId;
        private final String productType;

        public /* synthetic */ Product(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2);
        }

        @JvmStatic
        public static final Builder newBuilder() {
            return INSTANCE.newBuilder();
        }

        private Product(String str, String str2) {
            this.productId = str;
            this.productType = str2;
        }

        public final String getProductId() {
            return this.productId;
        }

        public final String getProductType() {
            return this.productType;
        }

        /* JADX INFO: compiled from: QueryProductDetailsParams.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Companion;", "", "()V", InAppPurchaseConstants.METHOD_NEW_BUILDER, "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Builder newBuilder() {
                return new Builder();
            }
        }

        /* JADX INFO: compiled from: QueryProductDetailsParams.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;", "", "()V", "productId", "", PurchaseData.PRODUCT_TYPE, InAppPurchaseConstants.METHOD_BUILD, "Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;", InAppPurchaseConstants.METHOD_SET_PRODUCT_ID, InAppPurchaseConstants.METHOD_SET_PRODUCT_TYPE, "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder {
            private String productId;
            private String productType;

            public final Builder setProductId(String productId) {
                Intrinsics.checkNotNullParameter(productId, "productId");
                this.productId = productId;
                return this;
            }

            public final Builder setProductType(String productType) {
                Intrinsics.checkNotNullParameter(productType, "productType");
                this.productType = productType;
                return this;
            }

            public final Product build() {
                if (this.productId == null) {
                    throw new IllegalArgumentException("Product id must be provided.".toString());
                }
                if (this.productType == null) {
                    throw new IllegalArgumentException("Product type must be provided.".toString());
                }
                String str = this.productId;
                Intrinsics.checkNotNull(str);
                String str2 = this.productType;
                Intrinsics.checkNotNull(str2);
                return new Product(str, str2, null);
            }
        }
    }
}
