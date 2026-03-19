package com.aptoide.sdk.core.analytics.severity;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsFlowSeverityLevel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;", "", "flow", "", "severityLevel", "", "(Ljava/lang/String;I)V", "getFlow", "()Ljava/lang/String;", "getSeverityLevel", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AnalyticsFlowSeverityLevel {
    private final String flow;
    private final int severityLevel;

    public static /* synthetic */ AnalyticsFlowSeverityLevel copy$default(AnalyticsFlowSeverityLevel analyticsFlowSeverityLevel, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = analyticsFlowSeverityLevel.flow;
        }
        if ((i2 & 2) != 0) {
            i = analyticsFlowSeverityLevel.severityLevel;
        }
        return analyticsFlowSeverityLevel.copy(str, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFlow() {
        return this.flow;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSeverityLevel() {
        return this.severityLevel;
    }

    public final AnalyticsFlowSeverityLevel copy(String flow, int severityLevel) {
        Intrinsics.checkNotNullParameter(flow, "flow");
        return new AnalyticsFlowSeverityLevel(flow, severityLevel);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnalyticsFlowSeverityLevel)) {
            return false;
        }
        AnalyticsFlowSeverityLevel analyticsFlowSeverityLevel = (AnalyticsFlowSeverityLevel) other;
        return Intrinsics.areEqual(this.flow, analyticsFlowSeverityLevel.flow) && this.severityLevel == analyticsFlowSeverityLevel.severityLevel;
    }

    public int hashCode() {
        return (this.flow.hashCode() * 31) + Integer.hashCode(this.severityLevel);
    }

    public String toString() {
        return "AnalyticsFlowSeverityLevel(flow=" + this.flow + ", severityLevel=" + this.severityLevel + ")";
    }

    public AnalyticsFlowSeverityLevel(String flow, int i) {
        Intrinsics.checkNotNullParameter(flow, "flow");
        this.flow = flow;
        this.severityLevel = i;
    }

    public final String getFlow() {
        return this.flow;
    }

    public final int getSeverityLevel() {
        return this.severityLevel;
    }
}
