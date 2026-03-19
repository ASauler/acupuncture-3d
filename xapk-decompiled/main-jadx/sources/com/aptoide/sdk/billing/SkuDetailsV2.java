package com.aptoide.sdk.billing;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.appevents.internal.Constants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SkuDetailsV2.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J?\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\u0010\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u0003J\u0006\u0010\u001f\u001a\u00020\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006!"}, d2 = {"Lcom/aptoide/sdk/billing/SkuDetailsV2;", "", SdkPurchaseFlowLabels.SKU, "", "title", "description", FirebaseAnalytics.Param.PRICE, "Lcom/aptoide/sdk/billing/PriceV2;", TypedValues.CycleType.S_WAVE_PERIOD, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/PriceV2;Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "getPeriod", "getPrice", "()Lcom/aptoide/sdk/billing/PriceV2;", "getSku", "getTitle", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toSkuDetails", "Lcom/aptoide/sdk/billing/SkuDetails;", "type", "toSkuDetailsResponseString", InAppPurchaseConstants.METHOD_TO_STRING, "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SkuDetailsV2 {
    private final String description;
    private final String period;
    private final PriceV2 price;
    private final String sku;
    private final String title;

    public static /* synthetic */ SkuDetailsV2 copy$default(SkuDetailsV2 skuDetailsV2, String str, String str2, String str3, PriceV2 priceV2, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = skuDetailsV2.sku;
        }
        if ((i & 2) != 0) {
            str2 = skuDetailsV2.title;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = skuDetailsV2.description;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            priceV2 = skuDetailsV2.price;
        }
        PriceV2 priceV22 = priceV2;
        if ((i & 16) != 0) {
            str4 = skuDetailsV2.period;
        }
        return skuDetailsV2.copy(str, str5, str6, priceV22, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSku() {
        return this.sku;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final PriceV2 getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPeriod() {
        return this.period;
    }

    public final SkuDetailsV2 copy(String sku, String title, String description, PriceV2 price, String period) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(price, "price");
        return new SkuDetailsV2(sku, title, description, price, period);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SkuDetailsV2)) {
            return false;
        }
        SkuDetailsV2 skuDetailsV2 = (SkuDetailsV2) other;
        return Intrinsics.areEqual(this.sku, skuDetailsV2.sku) && Intrinsics.areEqual(this.title, skuDetailsV2.title) && Intrinsics.areEqual(this.description, skuDetailsV2.description) && Intrinsics.areEqual(this.price, skuDetailsV2.price) && Intrinsics.areEqual(this.period, skuDetailsV2.period);
    }

    public int hashCode() {
        int iHashCode = ((this.sku.hashCode() * 31) + this.title.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.price.hashCode()) * 31;
        String str2 = this.period;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "SkuDetailsV2(sku=" + this.sku + ", title=" + this.title + ", description=" + this.description + ", price=" + this.price + ", period=" + this.period + ")";
    }

    public SkuDetailsV2(String sku, String title, String str, PriceV2 price, String str2) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(price, "price");
        this.sku = sku;
        this.title = title;
        this.description = str;
        this.price = price;
        this.period = str2;
    }

    public /* synthetic */ SkuDetailsV2(String str, String str2, String str3, PriceV2 priceV2, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, priceV2, str4);
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final PriceV2 getPrice() {
        return this.price;
    }

    public final String getPeriod() {
        return this.period;
    }

    public static /* synthetic */ SkuDetails toSkuDetails$default(SkuDetailsV2 skuDetailsV2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "INAPP";
        }
        return skuDetailsV2.toSkuDetails(str);
    }

    public final SkuDetails toSkuDetails(String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        String str = this.sku;
        String label = this.price.getLabel();
        long micros = (long) this.price.getMicros();
        String currency = this.price.getCurrency();
        String label2 = this.price.getAppc().getLabel();
        long micros2 = (long) this.price.getAppc().getMicros();
        String label3 = this.price.getLabel();
        long micros3 = (long) this.price.getMicros();
        String currency2 = this.price.getCurrency();
        String str2 = this.title;
        String str3 = this.description;
        String str4 = this.period;
        Trial trial = this.price.getTrial();
        String period = trial != null ? trial.getPeriod() : null;
        Trial trial2 = this.price.getTrial();
        return new SkuDetails(type, str, type, label, micros, currency, label2, micros2, "APPC", label3, micros3, currency2, str2, str3, str4, period, trial2 != null ? trial2.getEndDate() : null);
    }

    public final String toSkuDetailsResponseString() throws JSONException {
        String endDate;
        String period;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("productId", this.sku);
        jSONObject.put("type", "INAPP");
        jSONObject.put(FirebaseAnalytics.Param.PRICE, this.price.getLabel());
        jSONObject.put(Constants.GP_IAP_PRICE_CURRENCY_CODE_V2V4, this.price.getCurrency());
        jSONObject.put(Constants.GP_IAP_PRICE_AMOUNT_MICROS_V2V4, this.price.getMicros());
        jSONObject.put("appc_price", this.price.getAppc().getLabel());
        jSONObject.put("appc_price_currency_code", "APPC");
        jSONObject.put("appc_price_amount_micros", this.price.getAppc().getMicros());
        jSONObject.put("fiat_price", this.price.getLabel());
        jSONObject.put("fiat_price_currency_code", this.price.getCurrency());
        jSONObject.put("fiat_price_amount_micros", this.price.getMicros());
        jSONObject.put("title", this.title);
        String str = this.description;
        if (str != null) {
            jSONObject.put("description", str);
        }
        String str2 = this.period;
        if (str2 != null) {
            jSONObject.put(TypedValues.CycleType.S_WAVE_PERIOD, str2);
        }
        Trial trial = this.price.getTrial();
        if (trial != null && (period = trial.getPeriod()) != null) {
            jSONObject.put("trial_period", period);
        }
        Trial trial2 = this.price.getTrial();
        if (trial2 != null && (endDate = trial2.getEndDate()) != null) {
            jSONObject.put("trial_period_end_date", endDate);
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
