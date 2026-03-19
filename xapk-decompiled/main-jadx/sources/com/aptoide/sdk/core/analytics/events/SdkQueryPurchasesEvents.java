package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkQueryPurchasesEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents;", "", "()V", "SDK_QUERY_PURCHASES_FLOW", "", "SDK_QUERY_PURCHASES_REQUEST", "SDK_QUERY_PURCHASES_RESULT", "SDK_QUERY_PURCHASES_TYPE_NOT_SUPPORTED_ERROR", "SdkQueryPurchasesRequest", "SdkQueryPurchasesResult", "SdkQueryPurchasesTypeNotSupportedError", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkQueryPurchasesEvents {
    public static final SdkQueryPurchasesEvents INSTANCE = new SdkQueryPurchasesEvents();
    public static final String SDK_QUERY_PURCHASES_FLOW = "query_purchases";
    public static final String SDK_QUERY_PURCHASES_REQUEST = "sdk_query_puchases_request";
    public static final String SDK_QUERY_PURCHASES_RESULT = "sdk_query_purchases_result";
    public static final String SDK_QUERY_PURCHASES_TYPE_NOT_SUPPORTED_ERROR = "sdk_query_purchases_type_not_supported_error";

    private SdkQueryPurchasesEvents() {
    }

    /* JADX INFO: compiled from: SdkQueryPurchasesEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkQueryPurchasesRequest extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkQueryPurchasesRequest(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_REQUEST, data, SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkQueryPurchasesEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesTypeNotSupportedError;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkQueryPurchasesTypeNotSupportedError extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkQueryPurchasesTypeNotSupportedError(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_TYPE_NOT_SUPPORTED_ERROR, data, SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkQueryPurchasesEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkQueryPurchasesResult extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkQueryPurchasesResult(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_RESULT, data, SdkQueryPurchasesEvents.SDK_QUERY_PURCHASES_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }
}
