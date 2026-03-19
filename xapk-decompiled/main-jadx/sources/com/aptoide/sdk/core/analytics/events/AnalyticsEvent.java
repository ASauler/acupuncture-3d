package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsEvent.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b&\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "", "action", "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;", "name", "", "data", "", "flow", "severityLevel", "", "(Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V", "getAction", "()Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;", "getData", "()Ljava/util/Map;", "getFlow", "()Ljava/lang/String;", "getName", "getSeverityLevel", "()I", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AnalyticsEvent {
    private final AnalyticsManager.Action action;
    private final Map<String, Object> data;
    private final String flow;
    private final String name;
    private final int severityLevel;

    public AnalyticsEvent(AnalyticsManager.Action action, String name, Map<String, Object> data, String flow, int i) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(flow, "flow");
        this.action = action;
        this.name = name;
        this.data = data;
        this.flow = flow;
        this.severityLevel = i;
    }

    public final AnalyticsManager.Action getAction() {
        return this.action;
    }

    public final String getName() {
        return this.name;
    }

    public final Map<String, Object> getData() {
        return this.data;
    }

    public final String getFlow() {
        return this.flow;
    }

    public final int getSeverityLevel() {
        return this.severityLevel;
    }
}
