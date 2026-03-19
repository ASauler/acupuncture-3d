package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkPurchaseFlowEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents;", "", "()V", "PURCHASE_FLOW", "", "SDK_LAUNCH_PURCHASE", "SDK_LAUNCH_PURCHASE_MAIN_THREAD_FAILURE", "SDK_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE", "SDK_PURCHASE_RESULT", "SdkLaunchPurchase", "SdkLaunchPurchaseMainThreadFailure", "SdkLaunchPurchaseTypeNotSupportedFailure", "SdkPurchaseResult", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkPurchaseFlowEvents {
    public static final SdkPurchaseFlowEvents INSTANCE = new SdkPurchaseFlowEvents();
    public static final String PURCHASE_FLOW = "purchase_flow";
    public static final String SDK_LAUNCH_PURCHASE = "sdk_launch_purchase";
    public static final String SDK_LAUNCH_PURCHASE_MAIN_THREAD_FAILURE = "sdk_launch_purchase_main_thread_failure";
    public static final String SDK_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE = "sdk_launch_purchase_type_not_supported_failure";
    public static final String SDK_PURCHASE_RESULT = "sdk_purchase_result";

    private SdkPurchaseFlowEvents() {
    }

    /* JADX INFO: compiled from: SdkPurchaseFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchase;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkLaunchPurchase extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkLaunchPurchase(Map<String, Object> data) {
            super(AnalyticsManager.Action.CLICK, SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE, data, SdkPurchaseFlowEvents.PURCHASE_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkPurchaseFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkPurchaseResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkPurchaseResult extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkPurchaseResult(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkPurchaseFlowEvents.SDK_PURCHASE_RESULT, data, SdkPurchaseFlowEvents.PURCHASE_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkPurchaseFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchaseTypeNotSupportedFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkLaunchPurchaseTypeNotSupportedFailure extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkLaunchPurchaseTypeNotSupportedFailure(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE, data, SdkPurchaseFlowEvents.PURCHASE_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkPurchaseFlowEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchaseMainThreadFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkLaunchPurchaseMainThreadFailure extends AnalyticsEvent {
        public SdkLaunchPurchaseMainThreadFailure() {
            super(AnalyticsManager.Action.ERROR, SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE_MAIN_THREAD_FAILURE, new LinkedHashMap(), SdkPurchaseFlowEvents.PURCHASE_FLOW, 1);
        }
    }
}
