package com.aptoide.sdk.core.analytics.indicative;

import android.content.Context;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import com.aptoide.sdk.core.analytics.manager.EventLogger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.indicative.client.android.Indicative;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IndicativeEventLogger.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J6\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\bH\u0016¨\u0006\u0011"}, d2 = {"Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;", "Lcom/aptoide/sdk/core/analytics/manager/EventLogger;", "()V", "initialize", "", "context", "Landroid/content/Context;", SDKConstants.PARAM_KEY, "", "domain", "logEvent", "eventName", "data", "", "", "action", "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IndicativeEventLogger implements EventLogger {
    public static final IndicativeEventLogger INSTANCE = new IndicativeEventLogger();

    private IndicativeEventLogger() {
    }

    @Override // com.aptoide.sdk.core.analytics.manager.EventLogger
    public void initialize(Context context, String key, String domain) {
        if (context == null || key == null) {
            return;
        }
        Indicative.launch(context, key);
    }

    @Override // com.aptoide.sdk.core.analytics.manager.EventLogger
    public void logEvent(String eventName, Map<String, ? extends Object> data, AnalyticsManager.Action action, String context) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(context, "context");
        if (data == null) {
            data = new HashMap();
        }
        Indicative.recordEvent(eventName, SdkAnalyticsUtils.INSTANCE.getInstanceId(), (Map<String, Object>) MapsKt.plus(SdkAnalyticsUtils.INSTANCE.getSuperProperties(), data));
    }
}
