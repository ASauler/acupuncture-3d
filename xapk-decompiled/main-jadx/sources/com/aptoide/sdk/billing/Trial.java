package com.aptoide.sdk.billing;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SkuDetailsV2.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/aptoide/sdk/billing/Trial;", "", TypedValues.CycleType.S_WAVE_PERIOD, "", "endDate", "(Ljava/lang/String;Ljava/lang/String;)V", "getEndDate", "()Ljava/lang/String;", "getPeriod", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Trial {
    private final String endDate;
    private final String period;

    public static /* synthetic */ Trial copy$default(Trial trial, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = trial.period;
        }
        if ((i & 2) != 0) {
            str2 = trial.endDate;
        }
        return trial.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPeriod() {
        return this.period;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEndDate() {
        return this.endDate;
    }

    public final Trial copy(String period, String endDate) {
        Intrinsics.checkNotNullParameter(period, "period");
        Intrinsics.checkNotNullParameter(endDate, "endDate");
        return new Trial(period, endDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Trial)) {
            return false;
        }
        Trial trial = (Trial) other;
        return Intrinsics.areEqual(this.period, trial.period) && Intrinsics.areEqual(this.endDate, trial.endDate);
    }

    public int hashCode() {
        return (this.period.hashCode() * 31) + this.endDate.hashCode();
    }

    public String toString() {
        return "Trial(period=" + this.period + ", endDate=" + this.endDate + ")";
    }

    public Trial(String period, String endDate) {
        Intrinsics.checkNotNullParameter(period, "period");
        Intrinsics.checkNotNullParameter(endDate, "endDate");
        this.period = period;
        this.endDate = endDate;
    }

    public final String getPeriod() {
        return this.period;
    }

    public final String getEndDate() {
        return this.endDate;
    }
}
