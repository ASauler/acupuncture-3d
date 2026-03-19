package com.aptoide.sdk.billing;

import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingFlowParams.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u0000 \u00132\u00020\u0001:\u0003\u0012\u0013\u0014B9\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/BillingFlowParams;", "", SdkPurchaseFlowLabels.SKU, "", "skuType", "developerPayload", "obfuscatedAccountId", "freeTrial", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getDeveloperPayload", "()Ljava/lang/String;", "getFreeTrial", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getObfuscatedAccountId", "getSku", "getSkuType", "Builder", "Companion", "ProductDetailsParams", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BillingFlowParams {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String developerPayload;
    private final Boolean freeTrial;
    private final String obfuscatedAccountId;
    private final String sku;
    private final String skuType;

    @JvmStatic
    public static final Builder newBuilder() {
        return INSTANCE.newBuilder();
    }

    public BillingFlowParams(String sku, String skuType, String str, String str2, Boolean bool) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(skuType, "skuType");
        this.sku = sku;
        this.skuType = skuType;
        this.developerPayload = str;
        this.obfuscatedAccountId = str2;
        this.freeTrial = bool;
    }

    public /* synthetic */ BillingFlowParams(String str, String str2, String str3, String str4, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : bool);
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getSkuType() {
        return this.skuType;
    }

    public final String getDeveloperPayload() {
        return this.developerPayload;
    }

    public final String getObfuscatedAccountId() {
        return this.obfuscatedAccountId;
    }

    public final Boolean getFreeTrial() {
        return this.freeTrial;
    }

    /* JADX INFO: compiled from: BillingFlowParams.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0004J\u0014\u0010\u0011\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;", "", "()V", "developerPayload", "", "freeTrial", "", "Ljava/lang/Boolean;", "obfuscatedAccountId", "productDetailsParamsList", "", "Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;", InAppPurchaseConstants.METHOD_BUILD, "Lcom/aptoide/sdk/billing/BillingFlowParams;", "setDeveloperPayload", "setFreeTrial", "setObfuscatedAccountId", "setProductDetailsParamsList", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String developerPayload;
        private Boolean freeTrial;
        private String obfuscatedAccountId;
        private List<ProductDetailsParams> productDetailsParamsList = CollectionsKt.emptyList();

        public final Builder setProductDetailsParamsList(List<ProductDetailsParams> productDetailsParamsList) {
            Intrinsics.checkNotNullParameter(productDetailsParamsList, "productDetailsParamsList");
            if (!(!productDetailsParamsList.isEmpty())) {
                throw new IllegalArgumentException("Product list must not be empty.".toString());
            }
            if (!(productDetailsParamsList.size() == 1)) {
                throw new IllegalArgumentException("Only one product is supported.".toString());
            }
            this.productDetailsParamsList = productDetailsParamsList;
            return this;
        }

        @Deprecated(message = "Deprecated parameter. DeveloperPayload should not be used to identify Purchases. Use instead the purchaseToken. If needed to identify the User use the [obfuscatedAccountId] parameter.")
        public final Builder setDeveloperPayload(String developerPayload) {
            Intrinsics.checkNotNullParameter(developerPayload, "developerPayload");
            if (!(developerPayload.length() > 0)) {
                throw new IllegalArgumentException("Developer Payload must not be empty. Use null if not necessary".toString());
            }
            this.developerPayload = developerPayload;
            return this;
        }

        public final Builder setObfuscatedAccountId(String obfuscatedAccountId) {
            Intrinsics.checkNotNullParameter(obfuscatedAccountId, "obfuscatedAccountId");
            if (!(obfuscatedAccountId.length() > 0)) {
                throw new IllegalArgumentException("Obfuscated Account ID must not be empty. Use null if not necessary".toString());
            }
            this.obfuscatedAccountId = obfuscatedAccountId;
            return this;
        }

        public final Builder setFreeTrial(boolean freeTrial) {
            this.freeTrial = Boolean.valueOf(freeTrial);
            return this;
        }

        public final BillingFlowParams build() {
            if (this.productDetailsParamsList == null) {
                throw new IllegalArgumentException("ProductDetailsParams list must be provided.".toString());
            }
            if (!(!r0.isEmpty())) {
                throw new IllegalArgumentException("ProductDetailsParams list must not be empty.".toString());
            }
            ProductDetails productDetails = ((ProductDetailsParams) CollectionsKt.first((List) this.productDetailsParamsList)).getProductDetails();
            return new BillingFlowParams(productDetails.getProductId(), productDetails.getProductType(), this.developerPayload, this.obfuscatedAccountId, this.freeTrial);
        }
    }

    /* JADX INFO: compiled from: BillingFlowParams.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \b2\u00020\u0001:\u0002\u0007\bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;", "", "productDetails", "Lcom/aptoide/sdk/billing/ProductDetails;", "(Lcom/aptoide/sdk/billing/ProductDetails;)V", "getProductDetails", "()Lcom/aptoide/sdk/billing/ProductDetails;", "Builder", "Companion", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ProductDetailsParams {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final ProductDetails productDetails;

        public /* synthetic */ ProductDetailsParams(ProductDetails productDetails, DefaultConstructorMarker defaultConstructorMarker) {
            this(productDetails);
        }

        @JvmStatic
        public static final Builder newBuilder() {
            return INSTANCE.newBuilder();
        }

        private ProductDetailsParams(ProductDetails productDetails) {
            this.productDetails = productDetails;
        }

        public final ProductDetails getProductDetails() {
            return this.productDetails;
        }

        /* JADX INFO: compiled from: BillingFlowParams.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;", "", "()V", "productDetails", "Lcom/aptoide/sdk/billing/ProductDetails;", InAppPurchaseConstants.METHOD_BUILD, "Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;", "setProductDetails", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder {
            private ProductDetails productDetails;

            public final Builder setProductDetails(ProductDetails productDetails) {
                Intrinsics.checkNotNullParameter(productDetails, "productDetails");
                this.productDetails = productDetails;
                return this;
            }

            public final ProductDetailsParams build() {
                if (this.productDetails == null) {
                    throw new IllegalArgumentException("ProductDetails is required for constructing ProductDetailsParams.".toString());
                }
                ProductDetails productDetails = this.productDetails;
                Intrinsics.checkNotNull(productDetails);
                return new ProductDetailsParams(productDetails, null);
            }
        }

        /* JADX INFO: compiled from: BillingFlowParams.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Companion;", "", "()V", InAppPurchaseConstants.METHOD_NEW_BUILDER, "Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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

    /* JADX INFO: compiled from: BillingFlowParams.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/BillingFlowParams$Companion;", "", "()V", InAppPurchaseConstants.METHOD_NEW_BUILDER, "Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
