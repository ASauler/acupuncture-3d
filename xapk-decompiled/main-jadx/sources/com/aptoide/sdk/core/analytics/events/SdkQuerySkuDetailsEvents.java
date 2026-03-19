package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkQuerySkuDetailsEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents;", "", "()V", "QUERY_SKU_DETAILS_FLOW", "", "SDK_QUERY_SKU_DETAILS_FAILURE_PARSING_SKUS", "SDK_QUERY_SKU_DETAILS_REQUEST", "SDK_QUERY_SKU_DETAILS_RESULT", "SdkQuerySkuDetailsFailureParsingSkus", "SdkQuerySkuDetailsRequest", "SdkQuerySkuDetailsResult", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkQuerySkuDetailsEvents {
    public static final SdkQuerySkuDetailsEvents INSTANCE = new SdkQuerySkuDetailsEvents();
    public static final String QUERY_SKU_DETAILS_FLOW = "query_sku_details";
    public static final String SDK_QUERY_SKU_DETAILS_FAILURE_PARSING_SKUS = "sdk_query_sku_details_failure_on_parsing_skus";
    public static final String SDK_QUERY_SKU_DETAILS_REQUEST = "sdk_query_sku_details_request";
    public static final String SDK_QUERY_SKU_DETAILS_RESULT = "sdk_query_sku_details_result";

    private SdkQuerySkuDetailsEvents() {
    }

    /* JADX INFO: compiled from: SdkQuerySkuDetailsEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkQuerySkuDetailsRequest extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkQuerySkuDetailsRequest(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_REQUEST, data, SdkQuerySkuDetailsEvents.QUERY_SKU_DETAILS_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkQuerySkuDetailsEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkQuerySkuDetailsResult extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkQuerySkuDetailsResult(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_RESULT, data, SdkQuerySkuDetailsEvents.QUERY_SKU_DETAILS_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkQuerySkuDetailsEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsFailureParsingSkus;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkQuerySkuDetailsFailureParsingSkus extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkQuerySkuDetailsFailureParsingSkus(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_FAILURE_PARSING_SKUS, data, SdkQuerySkuDetailsEvents.QUERY_SKU_DETAILS_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }
}
