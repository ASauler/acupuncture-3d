package com.aptoide.sdk.billing;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SkuDetailsV2.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/aptoide/sdk/billing/AppcV2;", "", Constants.ScionAnalytics.PARAM_LABEL, "", "micros", "", "(Ljava/lang/String;D)V", "getLabel", "()Ljava/lang/String;", "getMicros", "()D", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AppcV2 {
    private final String label;
    private final double micros;

    public static /* synthetic */ AppcV2 copy$default(AppcV2 appcV2, String str, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            str = appcV2.label;
        }
        if ((i & 2) != 0) {
            d = appcV2.micros;
        }
        return appcV2.copy(str, d);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final double getMicros() {
        return this.micros;
    }

    public final AppcV2 copy(String label, double micros) {
        Intrinsics.checkNotNullParameter(label, "label");
        return new AppcV2(label, micros);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppcV2)) {
            return false;
        }
        AppcV2 appcV2 = (AppcV2) other;
        return Intrinsics.areEqual(this.label, appcV2.label) && Double.compare(this.micros, appcV2.micros) == 0;
    }

    public int hashCode() {
        return (this.label.hashCode() * 31) + Double.hashCode(this.micros);
    }

    public String toString() {
        return "AppcV2(label=" + this.label + ", micros=" + this.micros + ")";
    }

    public AppcV2(String label, double d) {
        Intrinsics.checkNotNullParameter(label, "label");
        this.label = label;
        this.micros = d;
    }

    public final String getLabel() {
        return this.label;
    }

    public final double getMicros() {
        return this.micros;
    }
}
