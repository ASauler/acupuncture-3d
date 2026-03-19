package com.aptoide.sdk.core.analytics.manager;

import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsManager implements Serializable {
    private final KeyValueNormalizer analyticsNormalizer;
    private final Map<EventLogger, Collection<String>> eventLoggers;

    public enum Action {
        CLICK,
        SCROLL,
        INPUT,
        AUTO,
        ROOT,
        VIEW,
        INSTALL,
        OPEN,
        IMPRESSION,
        PULL_REFRESH,
        DISMISS,
        ENDLESS_SCROLL,
        ERROR
    }

    private AnalyticsManager(Map<EventLogger, Collection<String>> map, KeyValueNormalizer keyValueNormalizer) {
        this.eventLoggers = map;
        this.analyticsNormalizer = keyValueNormalizer;
    }

    public void logEvent(Map<String, Object> map, String str, Action action, String str2) {
        Logger.logDebug("Called with: eventName = [" + str + "], superProperties = [" + SdkAnalyticsUtils.INSTANCE.getSuperProperties() + "], data = " + map + "], action = " + action + "], context = " + str2 + "], instanceId = [" + SdkAnalyticsUtils.INSTANCE.getInstanceId() + "]");
        Logger.logInfo("Called with: eventName = " + str + "], superProperties = [" + SdkAnalyticsUtils.INSTANCE.getLoggableSuperProperties() + "], action = " + action + "], context = " + str2 + "]");
        Map<String, Object> mapNormalize = this.analyticsNormalizer.normalize(map);
        int i = 0;
        for (Map.Entry<EventLogger, Collection<String>> entry : this.eventLoggers.entrySet()) {
            if (entry.getValue().contains(str)) {
                entry.getKey().logEvent(str, mapNormalize, action, str2);
                i++;
            }
        }
        if (i <= 0) {
            Logger.logWarningDebug(str + " event not sent ");
        }
    }

    public static class Builder {
        private KeyValueNormalizer analyticsNormalizer;
        private final Map<EventLogger, Collection<String>> eventLoggers = new HashMap();

        public Builder addLogger(EventLogger eventLogger, Collection<String> collection) {
            this.eventLoggers.put(eventLogger, collection);
            return this;
        }

        public Builder setAnalyticsNormalizer(KeyValueNormalizer keyValueNormalizer) {
            this.analyticsNormalizer = keyValueNormalizer;
            return this;
        }

        public AnalyticsManager build() {
            if (this.eventLoggers.isEmpty()) {
                throw new IllegalArgumentException("Analytics manager need at least one logger");
            }
            return new AnalyticsManager(this.eventLoggers, this.analyticsNormalizer);
        }
    }
}
