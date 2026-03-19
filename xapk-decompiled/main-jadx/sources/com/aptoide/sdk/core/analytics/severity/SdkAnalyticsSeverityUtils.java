package com.aptoide.sdk.core.analytics.severity;

import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.AnalyticsEvent;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SdkAnalyticsSeverityUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/severity/SdkAnalyticsSeverityUtils;", "", "()V", "isEventSeverityAllowed", "", "analyticsEvent", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkAnalyticsSeverityUtils {
    public final boolean isEventSeverityAllowed(AnalyticsEvent analyticsEvent) {
        Object next;
        Intrinsics.checkNotNullParameter(analyticsEvent, "analyticsEvent");
        List<AnalyticsFlowSeverityLevel> analyticsFlowSeverityLevels = SdkAnalyticsUtils.INSTANCE.getAnalyticsFlowSeverityLevels();
        if (analyticsFlowSeverityLevels == null) {
            analyticsFlowSeverityLevels = SdkAnalyticsUtils.INSTANCE.getDefaultAnalyticsFlowSeverityLevels();
        }
        Iterator<T> it = analyticsFlowSeverityLevels.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (StringsKt.equals(((AnalyticsFlowSeverityLevel) next).getFlow(), analyticsEvent.getFlow(), true)) {
                break;
            }
        }
        AnalyticsFlowSeverityLevel analyticsFlowSeverityLevel = (AnalyticsFlowSeverityLevel) next;
        return (analyticsFlowSeverityLevel != null ? analyticsFlowSeverityLevel.getSeverityLevel() : 0) >= analyticsEvent.getSeverityLevel();
    }
}
