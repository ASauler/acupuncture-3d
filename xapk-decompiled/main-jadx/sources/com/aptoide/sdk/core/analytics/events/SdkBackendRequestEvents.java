package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkBackendRequestEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents;", "", "()V", "BACKEND_REQUEST_FLOW", "", "SDK_CALL_BACKEND_ERROR", "SDK_CALL_BACKEND_MAPPING_FAILURE", "SDK_CALL_BACKEND_REQUEST", "SDK_CALL_BACKEND_RESPONSE", "SdkCallBackendError", "SdkCallBackendMappingFailure", "SdkCallBackendRequest", "SdkCallBackendResponse", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkBackendRequestEvents {
    public static final String BACKEND_REQUEST_FLOW = "backend_request";
    public static final SdkBackendRequestEvents INSTANCE = new SdkBackendRequestEvents();
    public static final String SDK_CALL_BACKEND_ERROR = "sdk_call_backend_error";
    public static final String SDK_CALL_BACKEND_MAPPING_FAILURE = "sdk_call_backend_mapping_failure";
    public static final String SDK_CALL_BACKEND_REQUEST = "sdk_call_backend_request";
    public static final String SDK_CALL_BACKEND_RESPONSE = "sdk_call_backend_response";

    private SdkBackendRequestEvents() {
    }

    /* JADX INFO: compiled from: SdkBackendRequestEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkCallBackendRequest extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkCallBackendRequest(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, data, SdkBackendRequestEvents.BACKEND_REQUEST_FLOW, 3);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkBackendRequestEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendResponse;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkCallBackendResponse extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkCallBackendResponse(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkBackendRequestEvents.SDK_CALL_BACKEND_RESPONSE, data, SdkBackendRequestEvents.BACKEND_REQUEST_FLOW, 2);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkBackendRequestEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendMappingFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkCallBackendMappingFailure extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkCallBackendMappingFailure(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkBackendRequestEvents.SDK_CALL_BACKEND_MAPPING_FAILURE, data, SdkBackendRequestEvents.BACKEND_REQUEST_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkBackendRequestEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendError;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkCallBackendError extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkCallBackendError(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkBackendRequestEvents.SDK_CALL_BACKEND_ERROR, data, SdkBackendRequestEvents.BACKEND_REQUEST_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }
}
