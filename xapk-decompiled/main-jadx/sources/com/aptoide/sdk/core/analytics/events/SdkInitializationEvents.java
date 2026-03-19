package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkInitializationEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\bÆ\u0002\u0018\u00002\u00020\u0001:\u000b\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001aB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents;", "", "()V", "SDK_APP_INSTALLATION_TRIGGER", "", "SDK_ATTRIBUTION_REQUEST", "SDK_ATTRIBUTION_REQUEST_FAILURE", "SDK_ATTRIBUTION_RESULT", "SDK_ATTRIBUTION_RETRY_ATTEMPT", "SDK_FINISH_CONNECTION", "SDK_INITIALIZATION_FLOW", "SDK_PAYFLOW_REQUEST", "SDK_PAYFLOW_RESULT", "SDK_SERVICE_CONNECTED", "SDK_SERVICE_CONNECTION_FAILED", "SDK_START_CONNECTION", "SdkAppInstallationTrigger", "SdkAttributionRequest", "SdkAttributionRequestFailure", "SdkAttributionResult", "SdkAttributionRetryAttempt", "SdkFinishConnection", "SdkPayflowRequest", "SdkPayflowResult", "SdkServiceConnected", "SdkServiceConnectionFailure", "SdkStartConnection", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkInitializationEvents {
    public static final SdkInitializationEvents INSTANCE = new SdkInitializationEvents();
    public static final String SDK_APP_INSTALLATION_TRIGGER = "sdk_app_installation_trigger";
    public static final String SDK_ATTRIBUTION_REQUEST = "sdk_attribution_request";
    public static final String SDK_ATTRIBUTION_REQUEST_FAILURE = "sdk_attribution_request_failure";
    public static final String SDK_ATTRIBUTION_RESULT = "sdk_attribution_result";
    public static final String SDK_ATTRIBUTION_RETRY_ATTEMPT = "sdk_attribution_retry_attempt";
    public static final String SDK_FINISH_CONNECTION = "sdk_finish_connection";
    public static final String SDK_INITIALIZATION_FLOW = "initialization";
    public static final String SDK_PAYFLOW_REQUEST = "sdk_payflow_request";
    public static final String SDK_PAYFLOW_RESULT = "sdk_payflow_result";
    public static final String SDK_SERVICE_CONNECTED = "sdk_service_connected";
    public static final String SDK_SERVICE_CONNECTION_FAILED = "sdk_service_connection_failed";
    public static final String SDK_START_CONNECTION = "sdk_start_connection";

    private SdkInitializationEvents() {
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkStartConnection;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkStartConnection extends AnalyticsEvent {
        public SdkStartConnection() {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_START_CONNECTION, new LinkedHashMap(), SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkFinishConnection;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkFinishConnection extends AnalyticsEvent {
        public SdkFinishConnection() {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_FINISH_CONNECTION, new LinkedHashMap(), SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkServiceConnected;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkServiceConnected extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkServiceConnected(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_SERVICE_CONNECTED, data, SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkServiceConnectionFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkServiceConnectionFailure extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkServiceConnectionFailure(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkInitializationEvents.SDK_SERVICE_CONNECTION_FAILED, data, SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAttributionRequest extends AnalyticsEvent {
        public SdkAttributionRequest() {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_ATTRIBUTION_REQUEST, new LinkedHashMap(), SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 3);
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAttributionResult extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkAttributionResult(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_ATTRIBUTION_RESULT, data, SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 2);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRequestFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAttributionRequestFailure extends AnalyticsEvent {
        public SdkAttributionRequestFailure() {
            super(AnalyticsManager.Action.ERROR, SdkInitializationEvents.SDK_ATTRIBUTION_REQUEST_FAILURE, new LinkedHashMap(), SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRetryAttempt;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAttributionRetryAttempt extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkAttributionRetryAttempt(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_ATTRIBUTION_RETRY_ATTEMPT, data, SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 3);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkPayflowRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkPayflowRequest extends AnalyticsEvent {
        public SdkPayflowRequest() {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_PAYFLOW_REQUEST, new LinkedHashMap(), SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 3);
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkPayflowResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkPayflowResult extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkPayflowResult(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_PAYFLOW_RESULT, data, SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 2);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkInitializationEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAppInstallationTrigger;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAppInstallationTrigger extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkAppInstallationTrigger(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkInitializationEvents.SDK_APP_INSTALLATION_TRIGGER, data, SdkInitializationEvents.SDK_INITIALIZATION_FLOW, 3);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }
}
