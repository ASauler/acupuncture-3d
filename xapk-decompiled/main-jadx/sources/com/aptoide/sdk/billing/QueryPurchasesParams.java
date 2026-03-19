package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueryPurchasesParams.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \b2\u00020\u0001:\u0002\u0007\bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/QueryPurchasesParams;", "", PurchaseData.PRODUCT_TYPE, "", "(Ljava/lang/String;)V", "getProductType", "()Ljava/lang/String;", "Builder", "Companion", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueryPurchasesParams {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String productType;

    public /* synthetic */ QueryPurchasesParams(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @JvmStatic
    public static final Builder newBuilder() {
        return INSTANCE.newBuilder();
    }

    private QueryPurchasesParams(String str) {
        this.productType = str;
    }

    public final String getProductType() {
        return this.productType;
    }

    /* JADX INFO: compiled from: QueryPurchasesParams.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/QueryPurchasesParams$Builder;", "", "()V", PurchaseData.PRODUCT_TYPE, "", InAppPurchaseConstants.METHOD_BUILD, "Lcom/aptoide/sdk/billing/QueryPurchasesParams;", InAppPurchaseConstants.METHOD_SET_PRODUCT_TYPE, "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String productType;

        public final Builder setProductType(String productType) {
            Intrinsics.checkNotNullParameter(productType, "productType");
            if (!(productType.length() > 0)) {
                throw new IllegalArgumentException("Product type must be provided.".toString());
            }
            this.productType = productType;
            return this;
        }

        public final QueryPurchasesParams build() {
            if (this.productType == null) {
                throw new IllegalArgumentException("Product type must be provided.".toString());
            }
            String str = this.productType;
            Intrinsics.checkNotNull(str);
            return new QueryPurchasesParams(str, null);
        }
    }

    /* JADX INFO: compiled from: QueryPurchasesParams.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/QueryPurchasesParams$Companion;", "", "()V", InAppPurchaseConstants.METHOD_NEW_BUILDER, "Lcom/aptoide/sdk/billing/QueryPurchasesParams$Builder;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
}
