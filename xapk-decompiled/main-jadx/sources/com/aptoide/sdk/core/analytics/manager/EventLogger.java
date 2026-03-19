package com.aptoide.sdk.core.analytics.manager;

import android.content.Context;
import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface EventLogger {
    void initialize(Context context, String str, String str2);

    void logEvent(String str, Map<String, Object> map, AnalyticsManager.Action action, String str2);
}
