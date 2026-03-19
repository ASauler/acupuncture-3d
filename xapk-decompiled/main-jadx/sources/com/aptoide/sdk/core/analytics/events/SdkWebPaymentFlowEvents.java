package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\bÆ\u0002\u0018\u00002\u00020\u0001:\u000b\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001aB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;", "", "()V", "SDK_WEB_PAYMENT_ALLOW_EXTERNAL_APPS", "", "SDK_WEB_PAYMENT_ERROR_PROCESSING_PURCHASE_RESULT", "SDK_WEB_PAYMENT_EXECUTE_EXTERNAL_DEEPLINK", "SDK_WEB_PAYMENT_EXTERNAL_PAYMENT_RESULT", "SDK_WEB_PAYMENT_FAILURE_TO_OBTAIN_URL", "SDK_WEB_PAYMENT_FAILURE_TO_OPEN_DEEPLINK", "SDK_WEB_PAYMENT_LAUNCH_EXTERNAL_PAYMENT", "SDK_WEB_PAYMENT_OPEN_DEEPLINK", "SDK_WEB_PAYMENT_PURCHASE_RESULT_EMPTY", "SDK_WEB_PAYMENT_START", "SDK_WEB_PAYMENT_WALLET_PAYMENT_RESULT", "WEB_PAYMENT_FLOW", "SdkWebPaymentAllowExternalApps", "SdkWebPaymentErrorProcessingPurchaseResult", "SdkWebPaymentExecuteExternalDeeplink", "SdkWebPaymentExternalPaymentResult", "SdkWebPaymentFailureToObtainUrl", "SdkWebPaymentFailureToOpenDeeplink", "SdkWebPaymentLaunchExternalPayment", "SdkWebPaymentOpenDeeplink", "SdkWebPaymentPurchaseResultEmpty", "SdkWebPaymentStart", "SdkWebPaymentWalletPaymentResult", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkWebPaymentFlowEvents {
    public static final SdkWebPaymentFlowEvents INSTANCE = new SdkWebPaymentFlowEvents();
    public static final String SDK_WEB_PAYMENT_ALLOW_EXTERNAL_APPS = "sdk_web_payment_allow_external_apps";
    public static final String SDK_WEB_PAYMENT_ERROR_PROCESSING_PURCHASE_RESULT = "sdk_web_payment_error_processing_purchase_result";
    public static final String SDK_WEB_PAYMENT_EXECUTE_EXTERNAL_DEEPLINK = "sdk_web_payment_execute_external_deeplink";
    public static final String SDK_WEB_PAYMENT_EXTERNAL_PAYMENT_RESULT = "sdk_web_payment_external_payment_result";
    public static final String SDK_WEB_PAYMENT_FAILURE_TO_OBTAIN_URL = "sdk_web_payment_failure_to_obtain_url";
    public static final String SDK_WEB_PAYMENT_FAILURE_TO_OPEN_DEEPLINK = "sdk_web_payment_failure_to_open_deeplink";
    public static final String SDK_WEB_PAYMENT_LAUNCH_EXTERNAL_PAYMENT = "sdk_web_payment_launch_external_payment";
    public static final String SDK_WEB_PAYMENT_OPEN_DEEPLINK = "sdk_web_payment_open_deeplink";
    public static final String SDK_WEB_PAYMENT_PURCHASE_RESULT_EMPTY = "sdk_web_payment_purchase_result_empty";
    public static final String SDK_WEB_PAYMENT_START = "sdk_web_payment_start";
    public static final String SDK_WEB_PAYMENT_WALLET_PAYMENT_RESULT = "sdk_web_payment_wallet_payment_result";
    public static final String WEB_PAYMENT_FLOW = "web_payment_flow";

    private SdkWebPaymentFlowEvents() {
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentStart;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentStart extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkWebPaymentStart(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_START, data, SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentFailureToObtainUrl;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentFailureToObtainUrl extends AnalyticsEvent {
        public SdkWebPaymentFailureToObtainUrl() {
            super(AnalyticsManager.Action.ERROR, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_FAILURE_TO_OBTAIN_URL, new LinkedHashMap(), SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentFailureToOpenDeeplink;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentFailureToOpenDeeplink extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkWebPaymentFailureToOpenDeeplink(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_FAILURE_TO_OPEN_DEEPLINK, data, SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentErrorProcessingPurchaseResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentErrorProcessingPurchaseResult extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkWebPaymentErrorProcessingPurchaseResult(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_ERROR_PROCESSING_PURCHASE_RESULT, data, SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentPurchaseResultEmpty;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentPurchaseResultEmpty extends AnalyticsEvent {
        public SdkWebPaymentPurchaseResultEmpty() {
            super(AnalyticsManager.Action.ERROR, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_PURCHASE_RESULT_EMPTY, new LinkedHashMap(), SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentOpenDeeplink;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentOpenDeeplink extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkWebPaymentOpenDeeplink(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_OPEN_DEEPLINK, data, SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 3);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentLaunchExternalPayment;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentLaunchExternalPayment extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkWebPaymentLaunchExternalPayment(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_LAUNCH_EXTERNAL_PAYMENT, data, SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 3);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentAllowExternalApps;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentAllowExternalApps extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkWebPaymentAllowExternalApps(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_ALLOW_EXTERNAL_APPS, data, SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 4);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExternalPaymentResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentExternalPaymentResult extends AnalyticsEvent {
        public SdkWebPaymentExternalPaymentResult() {
            super(AnalyticsManager.Action.IMPRESSION, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_EXTERNAL_PAYMENT_RESULT, new LinkedHashMap(), SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 2);
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExecuteExternalDeeplink;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentExecuteExternalDeeplink extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkWebPaymentExecuteExternalDeeplink(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_EXECUTE_EXTERNAL_DEEPLINK, data, SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 3);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentWalletPaymentResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWebPaymentWalletPaymentResult extends AnalyticsEvent {
        public SdkWebPaymentWalletPaymentResult() {
            super(AnalyticsManager.Action.IMPRESSION, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_WALLET_PAYMENT_RESULT, new LinkedHashMap(), SdkWebPaymentFlowEvents.WEB_PAYMENT_FLOW, 2);
        }
    }
}
