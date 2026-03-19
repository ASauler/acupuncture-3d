package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.listeners.PurchaseData;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnfetchedProduct.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001\rB\u001f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/aptoide/sdk/billing/UnfetchedProduct;", "", "productId", "", PurchaseData.PRODUCT_TYPE, "statusCode", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getProductId", "()Ljava/lang/String;", "getProductType", "getStatusCode", "()I", "StatusCode", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnfetchedProduct {
    private final String productId;
    private final String productType;
    private final int statusCode;

    public UnfetchedProduct(String productId, String productType, int i) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(productType, "productType");
        this.productId = productId;
        this.productType = productType;
        this.statusCode = i;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final String getProductType() {
        return this.productType;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    /* JADX INFO: compiled from: UnfetchedProduct.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/billing/UnfetchedProduct$StatusCode;", "", "Companion", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface StatusCode {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int PRODUCT_NOT_FOUND = 3;
        public static final int UNKNOWN = 0;

        /* JADX INFO: compiled from: UnfetchedProduct.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/aptoide/sdk/billing/UnfetchedProduct$StatusCode$Companion;", "", "()V", "PRODUCT_NOT_FOUND", "", "UNKNOWN", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int PRODUCT_NOT_FOUND = 3;
            public static final int UNKNOWN = 0;

            private Companion() {
            }
        }
    }
}
