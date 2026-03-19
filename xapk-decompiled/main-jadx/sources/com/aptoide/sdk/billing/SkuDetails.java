package com.aptoide.sdk.billing;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.appevents.internal.Constants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SkuDetails.kt */
/* JADX INFO: loaded from: classes.dex */
@Deprecated(message = "Deprecated class. Use [ProductDetails] instead.")
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\"\b\u0007\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0015J\b\u0010)\u001a\u00020\u0003H\u0016R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0019R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0017R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0017R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0017R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0017¨\u0006*"}, d2 = {"Lcom/aptoide/sdk/billing/SkuDetails;", "Ljava/io/Serializable;", "itemType", "", SdkPurchaseFlowLabels.SKU, "type", FirebaseAnalytics.Param.PRICE, Constants.GP_IAP_PRICE_AMOUNT_MICROS_V5V7, "", Constants.GP_IAP_PRICE_CURRENCY_CODE_V5V7, "appcPrice", "appcPriceAmountMicros", "appcPriceCurrencyCode", "fiatPrice", "fiatPriceAmountMicros", "fiatPriceCurrencyCode", "title", "description", TypedValues.CycleType.S_WAVE_PERIOD, "trialPeriod", "trialPeriodEndDate", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAppcPrice", "()Ljava/lang/String;", "getAppcPriceAmountMicros", "()J", "getAppcPriceCurrencyCode", "getDescription", "getFiatPrice", "getFiatPriceAmountMicros", "getFiatPriceCurrencyCode", "getItemType", "getPeriod", "getPrice", "getPriceAmountMicros", "getPriceCurrencyCode", "getSku", "getTitle", "getTrialPeriod", "getTrialPeriodEndDate", "getType", InAppPurchaseConstants.METHOD_TO_STRING, "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SkuDetails implements Serializable {
    private final String appcPrice;
    private final long appcPriceAmountMicros;
    private final String appcPriceCurrencyCode;
    private final String description;
    private final String fiatPrice;
    private final long fiatPriceAmountMicros;
    private final String fiatPriceCurrencyCode;
    private final String itemType;
    private final String period;
    private final String price;
    private final long priceAmountMicros;
    private final String priceCurrencyCode;
    private final String sku;
    private final String title;
    private final String trialPeriod;
    private final String trialPeriodEndDate;
    private final String type;

    public SkuDetails(String itemType, String sku, String type, String price, long j, String priceCurrencyCode, String appcPrice, long j2, String appcPriceCurrencyCode, String fiatPrice, long j3, String fiatPriceCurrencyCode, String title, String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(itemType, "itemType");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(priceCurrencyCode, "priceCurrencyCode");
        Intrinsics.checkNotNullParameter(appcPrice, "appcPrice");
        Intrinsics.checkNotNullParameter(appcPriceCurrencyCode, "appcPriceCurrencyCode");
        Intrinsics.checkNotNullParameter(fiatPrice, "fiatPrice");
        Intrinsics.checkNotNullParameter(fiatPriceCurrencyCode, "fiatPriceCurrencyCode");
        Intrinsics.checkNotNullParameter(title, "title");
        this.itemType = itemType;
        this.sku = sku;
        this.type = type;
        this.price = price;
        this.priceAmountMicros = j;
        this.priceCurrencyCode = priceCurrencyCode;
        this.appcPrice = appcPrice;
        this.appcPriceAmountMicros = j2;
        this.appcPriceCurrencyCode = appcPriceCurrencyCode;
        this.fiatPrice = fiatPrice;
        this.fiatPriceAmountMicros = j3;
        this.fiatPriceCurrencyCode = fiatPriceCurrencyCode;
        this.title = title;
        this.description = str;
        this.period = str2;
        this.trialPeriod = str3;
        this.trialPeriodEndDate = str4;
    }

    public final String getItemType() {
        return this.itemType;
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getType() {
        return this.type;
    }

    public final String getPrice() {
        return this.price;
    }

    public final long getPriceAmountMicros() {
        return this.priceAmountMicros;
    }

    public final String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    public final String getAppcPrice() {
        return this.appcPrice;
    }

    public final long getAppcPriceAmountMicros() {
        return this.appcPriceAmountMicros;
    }

    public final String getAppcPriceCurrencyCode() {
        return this.appcPriceCurrencyCode;
    }

    public final String getFiatPrice() {
        return this.fiatPrice;
    }

    public final long getFiatPriceAmountMicros() {
        return this.fiatPriceAmountMicros;
    }

    public final String getFiatPriceCurrencyCode() {
        return this.fiatPriceCurrencyCode;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getPeriod() {
        return this.period;
    }

    public final String getTrialPeriod() {
        return this.trialPeriod;
    }

    public final String getTrialPeriodEndDate() {
        return this.trialPeriodEndDate;
    }

    public String toString() {
        return "SkuDetails{itemType='" + this.itemType + "', sku='" + this.sku + "', type='" + this.type + "', price='" + this.price + "', priceCurrencyCode='" + this.priceCurrencyCode + "', priceAmountMicros=" + this.priceAmountMicros + ", appcPrice='" + this.appcPrice + "', appcPriceCurrencyCode='" + this.appcPriceCurrencyCode + "', appcPriceAmountMicros=" + this.appcPriceAmountMicros + ", fiatPrice='" + this.fiatPrice + "', fiatPriceCurrencyCode='" + this.fiatPriceCurrencyCode + "', fiatPriceAmountMicros=" + this.fiatPriceAmountMicros + ", title='" + this.title + "', description='" + this.description + "', period='" + this.period + "', trialPeriod='" + this.trialPeriod + "', trialPeriodEndDate='" + this.trialPeriodEndDate + "'}";
    }
}
