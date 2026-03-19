package com.aptoide.sdk.billing;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.facebook.appevents.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProductDetails.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aBI\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0002\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/aptoide/sdk/billing/ProductDetails;", "", "productId", "", PurchaseData.PRODUCT_TYPE, "title", "description", Constants.GP_IAP_ONE_TIME_PURCHASE_OFFER_DETAILS, "Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;", Constants.GP_IAP_SUBSCRIPTION_OFFER_DETAILS, "", "Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;Ljava/util/List;)V", "getDescription", "()Ljava/lang/String;", "getOneTimePurchaseOfferDetails", "()Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;", "getProductId", "getProductType", "getSubscriptionOfferDetails", "()Ljava/util/List;", "getTitle", "OneTimePurchaseOfferDetails", "PricingPhase", "PricingPhases", "SubscriptionOfferDetails", "TrialDetails", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProductDetails {
    private final String description;
    private final OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails;
    private final String productId;
    private final String productType;
    private final List<SubscriptionOfferDetails> subscriptionOfferDetails;
    private final String title;

    public ProductDetails(String productId, String productType, String title, String str, OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails, List<SubscriptionOfferDetails> list) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(productType, "productType");
        Intrinsics.checkNotNullParameter(title, "title");
        this.productId = productId;
        this.productType = productType;
        this.title = title;
        this.description = str;
        this.oneTimePurchaseOfferDetails = oneTimePurchaseOfferDetails;
        this.subscriptionOfferDetails = list;
    }

    public /* synthetic */ ProductDetails(String str, String str2, String str3, String str4, OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : oneTimePurchaseOfferDetails, (i & 32) != 0 ? null : list);
    }

    public final String getProductId() {
        return this.productId;
    }

    public final String getProductType() {
        return this.productType;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final OneTimePurchaseOfferDetails getOneTimePurchaseOfferDetails() {
        return this.oneTimePurchaseOfferDetails;
    }

    public final List<SubscriptionOfferDetails> getSubscriptionOfferDetails() {
        return this.subscriptionOfferDetails;
    }

    /* JADX INFO: compiled from: ProductDetails.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0014\u0018\u00002\u00020\u0001BO\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/aptoide/sdk/billing/ProductDetails$OneTimePurchaseOfferDetails;", "", "formattedPrice", "", Constants.GP_IAP_PRICE_AMOUNT_MICROS_V5V7, "", Constants.GP_IAP_PRICE_CURRENCY_CODE_V5V7, "appcFormattedPrice", "appcPriceAmountMicros", "appcPriceCurrencyCode", "fiatFormattedPrice", "fiatPriceAmountMicros", "fiatPriceCurrencyCode", "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "getAppcFormattedPrice", "()Ljava/lang/String;", "getAppcPriceAmountMicros", "()J", "getAppcPriceCurrencyCode", "getFiatFormattedPrice", "getFiatPriceAmountMicros", "getFiatPriceCurrencyCode", "getFormattedPrice", "getPriceAmountMicros", "getPriceCurrencyCode", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OneTimePurchaseOfferDetails {
        private final String appcFormattedPrice;
        private final long appcPriceAmountMicros;
        private final String appcPriceCurrencyCode;
        private final String fiatFormattedPrice;
        private final long fiatPriceAmountMicros;
        private final String fiatPriceCurrencyCode;
        private final String formattedPrice;
        private final long priceAmountMicros;
        private final String priceCurrencyCode;

        public OneTimePurchaseOfferDetails(String formattedPrice, long j, String priceCurrencyCode, String appcFormattedPrice, long j2, String appcPriceCurrencyCode, String fiatFormattedPrice, long j3, String fiatPriceCurrencyCode) {
            Intrinsics.checkNotNullParameter(formattedPrice, "formattedPrice");
            Intrinsics.checkNotNullParameter(priceCurrencyCode, "priceCurrencyCode");
            Intrinsics.checkNotNullParameter(appcFormattedPrice, "appcFormattedPrice");
            Intrinsics.checkNotNullParameter(appcPriceCurrencyCode, "appcPriceCurrencyCode");
            Intrinsics.checkNotNullParameter(fiatFormattedPrice, "fiatFormattedPrice");
            Intrinsics.checkNotNullParameter(fiatPriceCurrencyCode, "fiatPriceCurrencyCode");
            this.formattedPrice = formattedPrice;
            this.priceAmountMicros = j;
            this.priceCurrencyCode = priceCurrencyCode;
            this.appcFormattedPrice = appcFormattedPrice;
            this.appcPriceAmountMicros = j2;
            this.appcPriceCurrencyCode = appcPriceCurrencyCode;
            this.fiatFormattedPrice = fiatFormattedPrice;
            this.fiatPriceAmountMicros = j3;
            this.fiatPriceCurrencyCode = fiatPriceCurrencyCode;
        }

        public final String getFormattedPrice() {
            return this.formattedPrice;
        }

        public final long getPriceAmountMicros() {
            return this.priceAmountMicros;
        }

        public final String getPriceCurrencyCode() {
            return this.priceCurrencyCode;
        }

        public final String getAppcFormattedPrice() {
            return this.appcFormattedPrice;
        }

        public final long getAppcPriceAmountMicros() {
            return this.appcPriceAmountMicros;
        }

        public final String getAppcPriceCurrencyCode() {
            return this.appcPriceCurrencyCode;
        }

        public final String getFiatFormattedPrice() {
            return this.fiatFormattedPrice;
        }

        public final long getFiatPriceAmountMicros() {
            return this.fiatPriceAmountMicros;
        }

        public final String getFiatPriceCurrencyCode() {
            return this.fiatPriceCurrencyCode;
        }
    }

    /* JADX INFO: compiled from: ProductDetails.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001b\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/billing/ProductDetails$SubscriptionOfferDetails;", "", Constants.GP_IAP_SUBSCRIPTION_PRICING_PHASES, "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;", "trialDetails", "Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;", "(Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;)V", "getPricingPhases", "()Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;", "getTrialDetails", "()Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SubscriptionOfferDetails {
        private final PricingPhases pricingPhases;
        private final TrialDetails trialDetails;

        public SubscriptionOfferDetails(PricingPhases pricingPhases, TrialDetails trialDetails) {
            Intrinsics.checkNotNullParameter(pricingPhases, "pricingPhases");
            this.pricingPhases = pricingPhases;
            this.trialDetails = trialDetails;
        }

        public /* synthetic */ SubscriptionOfferDetails(PricingPhases pricingPhases, TrialDetails trialDetails, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(pricingPhases, (i & 2) != 0 ? null : trialDetails);
        }

        public final PricingPhases getPricingPhases() {
            return this.pricingPhases;
        }

        public final TrialDetails getTrialDetails() {
            return this.trialDetails;
        }
    }

    /* JADX INFO: compiled from: ProductDetails.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\b\u0000\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/ProductDetails$PricingPhases;", "", "pricingPhaseList", "", "Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;", "(Ljava/util/List;)V", "getPricingPhaseList", "()Ljava/util/List;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PricingPhases {
        private final List<PricingPhase> pricingPhaseList;

        public PricingPhases(List<PricingPhase> pricingPhaseList) {
            Intrinsics.checkNotNullParameter(pricingPhaseList, "pricingPhaseList");
            this.pricingPhaseList = pricingPhaseList;
        }

        public final List<PricingPhase> getPricingPhaseList() {
            return this.pricingPhaseList;
        }
    }

    /* JADX INFO: compiled from: ProductDetails.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0015\u0018\u00002\u00020\u0001BW\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0002\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0011\u0010\f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/aptoide/sdk/billing/ProductDetails$PricingPhase;", "", Constants.GP_IAP_BILLING_PERIOD, "", "formattedPrice", Constants.GP_IAP_PRICE_AMOUNT_MICROS_V5V7, "", Constants.GP_IAP_PRICE_CURRENCY_CODE_V5V7, "appcFormattedPrice", "appcPriceAmountMicros", "appcPriceCurrencyCode", "fiatFormattedPrice", "fiatPriceAmountMicros", "fiatPriceCurrencyCode", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "getAppcFormattedPrice", "()Ljava/lang/String;", "getAppcPriceAmountMicros", "()J", "getAppcPriceCurrencyCode", "getBillingPeriod", "getFiatFormattedPrice", "getFiatPriceAmountMicros", "getFiatPriceCurrencyCode", "getFormattedPrice", "getPriceAmountMicros", "getPriceCurrencyCode", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PricingPhase {
        private final String appcFormattedPrice;
        private final long appcPriceAmountMicros;
        private final String appcPriceCurrencyCode;
        private final String billingPeriod;
        private final String fiatFormattedPrice;
        private final long fiatPriceAmountMicros;
        private final String fiatPriceCurrencyCode;
        private final String formattedPrice;
        private final long priceAmountMicros;
        private final String priceCurrencyCode;

        public PricingPhase(String billingPeriod, String formattedPrice, long j, String priceCurrencyCode, String appcFormattedPrice, long j2, String appcPriceCurrencyCode, String fiatFormattedPrice, long j3, String fiatPriceCurrencyCode) {
            Intrinsics.checkNotNullParameter(billingPeriod, "billingPeriod");
            Intrinsics.checkNotNullParameter(formattedPrice, "formattedPrice");
            Intrinsics.checkNotNullParameter(priceCurrencyCode, "priceCurrencyCode");
            Intrinsics.checkNotNullParameter(appcFormattedPrice, "appcFormattedPrice");
            Intrinsics.checkNotNullParameter(appcPriceCurrencyCode, "appcPriceCurrencyCode");
            Intrinsics.checkNotNullParameter(fiatFormattedPrice, "fiatFormattedPrice");
            Intrinsics.checkNotNullParameter(fiatPriceCurrencyCode, "fiatPriceCurrencyCode");
            this.billingPeriod = billingPeriod;
            this.formattedPrice = formattedPrice;
            this.priceAmountMicros = j;
            this.priceCurrencyCode = priceCurrencyCode;
            this.appcFormattedPrice = appcFormattedPrice;
            this.appcPriceAmountMicros = j2;
            this.appcPriceCurrencyCode = appcPriceCurrencyCode;
            this.fiatFormattedPrice = fiatFormattedPrice;
            this.fiatPriceAmountMicros = j3;
            this.fiatPriceCurrencyCode = fiatPriceCurrencyCode;
        }

        public final String getBillingPeriod() {
            return this.billingPeriod;
        }

        public final String getFormattedPrice() {
            return this.formattedPrice;
        }

        public final long getPriceAmountMicros() {
            return this.priceAmountMicros;
        }

        public final String getPriceCurrencyCode() {
            return this.priceCurrencyCode;
        }

        public final String getAppcFormattedPrice() {
            return this.appcFormattedPrice;
        }

        public final long getAppcPriceAmountMicros() {
            return this.appcPriceAmountMicros;
        }

        public final String getAppcPriceCurrencyCode() {
            return this.appcPriceCurrencyCode;
        }

        public final String getFiatFormattedPrice() {
            return this.fiatFormattedPrice;
        }

        public final long getFiatPriceAmountMicros() {
            return this.fiatPriceAmountMicros;
        }

        public final String getFiatPriceCurrencyCode() {
            return this.fiatPriceCurrencyCode;
        }
    }

    /* JADX INFO: compiled from: ProductDetails.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/ProductDetails$TrialDetails;", "", TypedValues.CycleType.S_WAVE_PERIOD, "", "periodEndDate", "(Ljava/lang/String;Ljava/lang/String;)V", "getPeriod", "()Ljava/lang/String;", "getPeriodEndDate", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TrialDetails {
        private final String period;
        private final String periodEndDate;

        public TrialDetails(String period, String periodEndDate) {
            Intrinsics.checkNotNullParameter(period, "period");
            Intrinsics.checkNotNullParameter(periodEndDate, "periodEndDate");
            this.period = period;
            this.periodEndDate = periodEndDate;
        }

        public final String getPeriod() {
            return this.period;
        }

        public final String getPeriodEndDate() {
            return this.periodEndDate;
        }
    }
}
