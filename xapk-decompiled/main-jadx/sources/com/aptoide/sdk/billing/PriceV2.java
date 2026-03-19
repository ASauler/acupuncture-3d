package com.aptoide.sdk.billing;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SkuDetailsV2.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\tHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000bHÆ\u0003JG\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006$"}, d2 = {"Lcom/aptoide/sdk/billing/PriceV2;", "", FirebaseAnalytics.Param.CURRENCY, "", Constants.ScionAnalytics.PARAM_LABEL, "symbol", "micros", "", "appc", "Lcom/aptoide/sdk/billing/AppcV2;", "trial", "Lcom/aptoide/sdk/billing/Trial;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/aptoide/sdk/billing/AppcV2;Lcom/aptoide/sdk/billing/Trial;)V", "getAppc", "()Lcom/aptoide/sdk/billing/AppcV2;", "getCurrency", "()Ljava/lang/String;", "getLabel", "getMicros", "()D", "getSymbol", "getTrial", "()Lcom/aptoide/sdk/billing/Trial;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PriceV2 {
    private final AppcV2 appc;
    private final String currency;
    private final String label;
    private final double micros;
    private final String symbol;
    private final Trial trial;

    public static /* synthetic */ PriceV2 copy$default(PriceV2 priceV2, String str, String str2, String str3, double d, AppcV2 appcV2, Trial trial, int i, Object obj) {
        if ((i & 1) != 0) {
            str = priceV2.currency;
        }
        if ((i & 2) != 0) {
            str2 = priceV2.label;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            str3 = priceV2.symbol;
        }
        String str5 = str3;
        if ((i & 8) != 0) {
            d = priceV2.micros;
        }
        double d2 = d;
        if ((i & 16) != 0) {
            appcV2 = priceV2.appc;
        }
        AppcV2 appcV22 = appcV2;
        if ((i & 32) != 0) {
            trial = priceV2.trial;
        }
        return priceV2.copy(str, str4, str5, d2, appcV22, trial);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSymbol() {
        return this.symbol;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final double getMicros() {
        return this.micros;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final AppcV2 getAppc() {
        return this.appc;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Trial getTrial() {
        return this.trial;
    }

    public final PriceV2 copy(String currency, String label, String symbol, double micros, AppcV2 appc, Trial trial) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(appc, "appc");
        return new PriceV2(currency, label, symbol, micros, appc, trial);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PriceV2)) {
            return false;
        }
        PriceV2 priceV2 = (PriceV2) other;
        return Intrinsics.areEqual(this.currency, priceV2.currency) && Intrinsics.areEqual(this.label, priceV2.label) && Intrinsics.areEqual(this.symbol, priceV2.symbol) && Double.compare(this.micros, priceV2.micros) == 0 && Intrinsics.areEqual(this.appc, priceV2.appc) && Intrinsics.areEqual(this.trial, priceV2.trial);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.currency.hashCode() * 31) + this.label.hashCode()) * 31) + this.symbol.hashCode()) * 31) + Double.hashCode(this.micros)) * 31) + this.appc.hashCode()) * 31;
        Trial trial = this.trial;
        return iHashCode + (trial == null ? 0 : trial.hashCode());
    }

    public String toString() {
        return "PriceV2(currency=" + this.currency + ", label=" + this.label + ", symbol=" + this.symbol + ", micros=" + this.micros + ", appc=" + this.appc + ", trial=" + this.trial + ")";
    }

    public PriceV2(String currency, String label, String symbol, double d, AppcV2 appc, Trial trial) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(appc, "appc");
        this.currency = currency;
        this.label = label;
        this.symbol = symbol;
        this.micros = d;
        this.appc = appc;
        this.trial = trial;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public final double getMicros() {
        return this.micros;
    }

    public final AppcV2 getAppc() {
        return this.appc;
    }

    public final Trial getTrial() {
        return this.trial;
    }
}
