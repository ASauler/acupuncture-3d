package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkGeneralFailureEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents;", "", "()V", "GENERAL_FAILURE_FLOW", "", "SDK_PURCHASE_SIGNATURE_VERIFICATION_FAILURE", "SDK_SERVICE_CONNECTION_EXCEPTION", "SDK_UNEXPECTED_FAILURE", "SdkPurchaseSignatureVerificationFailure", "SdkServiceConnectionException", "SdkUnexpectedFailure", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkGeneralFailureEvents {
    public static final String GENERAL_FAILURE_FLOW = "general_failure";
    public static final SdkGeneralFailureEvents INSTANCE = new SdkGeneralFailureEvents();
    public static final String SDK_PURCHASE_SIGNATURE_VERIFICATION_FAILURE = "sdk_purchase_signature_verification_failure";
    public static final String SDK_SERVICE_CONNECTION_EXCEPTION = "sdk_service_connection_exception";
    public static final String SDK_UNEXPECTED_FAILURE = "sdk_unexpected_failure";

    private SdkGeneralFailureEvents() {
    }

    /* JADX INFO: compiled from: SdkGeneralFailureEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkServiceConnectionException;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkServiceConnectionException extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkServiceConnectionException(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkGeneralFailureEvents.SDK_SERVICE_CONNECTION_EXCEPTION, data, SdkGeneralFailureEvents.GENERAL_FAILURE_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkGeneralFailureEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkPurchaseSignatureVerificationFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkPurchaseSignatureVerificationFailure extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkPurchaseSignatureVerificationFailure(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkGeneralFailureEvents.SDK_PURCHASE_SIGNATURE_VERIFICATION_FAILURE, data, SdkGeneralFailureEvents.GENERAL_FAILURE_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkGeneralFailureEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureEvents$SdkUnexpectedFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkUnexpectedFailure extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkUnexpectedFailure(Map<String, Object> data) {
            super(AnalyticsManager.Action.ERROR, SdkGeneralFailureEvents.SDK_UNEXPECTED_FAILURE, data, SdkGeneralFailureEvents.GENERAL_FAILURE_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }
}
