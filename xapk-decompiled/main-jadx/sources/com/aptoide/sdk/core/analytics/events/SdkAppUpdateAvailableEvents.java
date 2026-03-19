package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkAppUpdateAvailableEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents;", "", "()V", "APP_UPDATE_AVAILABLE_FLOW", "", "SDK_APP_UPDATE_AVAILABLE_FAILURE_TO_OBTAIN_RESULT", "SDK_APP_UPDATE_AVAILABLE_MAIN_THREAD_FAILURE", "SDK_APP_UPDATE_AVAILABLE_REQUEST", "SDK_APP_UPDATE_AVAILABLE_RESULT", "SdkAppUpdateAvailableFailureToObtainResult", "SdkAppUpdateAvailableMainThreadFailure", "SdkAppUpdateAvailableRequest", "SdkAppUpdateAvailableResult", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkAppUpdateAvailableEvents {
    public static final String APP_UPDATE_AVAILABLE_FLOW = "app_update_available";
    public static final SdkAppUpdateAvailableEvents INSTANCE = new SdkAppUpdateAvailableEvents();
    public static final String SDK_APP_UPDATE_AVAILABLE_FAILURE_TO_OBTAIN_RESULT = "sdk_app_update_available_failure_to_obtain_result";
    public static final String SDK_APP_UPDATE_AVAILABLE_MAIN_THREAD_FAILURE = "sdk_app_update_available_main_thread_failure";
    public static final String SDK_APP_UPDATE_AVAILABLE_REQUEST = "sdk_app_update_available_request";
    public static final String SDK_APP_UPDATE_AVAILABLE_RESULT = "sdk_app_update_available_result";

    private SdkAppUpdateAvailableEvents() {
    }

    /* JADX INFO: compiled from: SdkAppUpdateAvailableEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAppUpdateAvailableRequest extends AnalyticsEvent {
        public SdkAppUpdateAvailableRequest() {
            super(AnalyticsManager.Action.IMPRESSION, SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_REQUEST, new LinkedHashMap(), SdkAppUpdateAvailableEvents.APP_UPDATE_AVAILABLE_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkAppUpdateAvailableEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAppUpdateAvailableResult extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkAppUpdateAvailableResult(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_RESULT, data, SdkAppUpdateAvailableEvents.APP_UPDATE_AVAILABLE_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkAppUpdateAvailableEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableMainThreadFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAppUpdateAvailableMainThreadFailure extends AnalyticsEvent {
        public SdkAppUpdateAvailableMainThreadFailure() {
            super(AnalyticsManager.Action.ERROR, SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_MAIN_THREAD_FAILURE, new LinkedHashMap(), SdkAppUpdateAvailableEvents.APP_UPDATE_AVAILABLE_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkAppUpdateAvailableEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableFailureToObtainResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkAppUpdateAvailableFailureToObtainResult extends AnalyticsEvent {
        public SdkAppUpdateAvailableFailureToObtainResult() {
            super(AnalyticsManager.Action.ERROR, SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_FAILURE_TO_OBTAIN_RESULT, new LinkedHashMap(), SdkAppUpdateAvailableEvents.APP_UPDATE_AVAILABLE_FLOW, 1);
        }
    }
}
