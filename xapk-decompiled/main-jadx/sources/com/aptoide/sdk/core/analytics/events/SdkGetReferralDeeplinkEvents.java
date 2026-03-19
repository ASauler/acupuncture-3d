package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkGetReferralDeeplinkEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents;", "", "()V", "GET_REFERRAL_DEEPLINK_FLOW", "", "SDK_GET_REFERRAL_DEEPLINK_MAIN_THREAD_FAILURE", "SDK_GET_REFERRAL_DEEPLINK_REQUEST", "SDK_GET_REFERRAL_DEEPLINK_RESULT", "SdkGetReferralDeeplinkMainThreadFailure", "SdkGetReferralDeeplinkRequest", "SdkGetReferralDeeplinkResult", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkGetReferralDeeplinkEvents {
    public static final String GET_REFERRAL_DEEPLINK_FLOW = "get_referral_deeplink";
    public static final SdkGetReferralDeeplinkEvents INSTANCE = new SdkGetReferralDeeplinkEvents();
    public static final String SDK_GET_REFERRAL_DEEPLINK_MAIN_THREAD_FAILURE = "sdk_referral_deeplink_main_thread_failure";
    public static final String SDK_GET_REFERRAL_DEEPLINK_REQUEST = "sdk_referral_deeplink_request";
    public static final String SDK_GET_REFERRAL_DEEPLINK_RESULT = "sdk_referral_deeplink_result";

    private SdkGetReferralDeeplinkEvents() {
    }

    /* JADX INFO: compiled from: SdkGetReferralDeeplinkEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkRequest;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkGetReferralDeeplinkRequest extends AnalyticsEvent {
        public SdkGetReferralDeeplinkRequest() {
            super(AnalyticsManager.Action.IMPRESSION, SdkGetReferralDeeplinkEvents.SDK_GET_REFERRAL_DEEPLINK_REQUEST, new LinkedHashMap(), SdkGetReferralDeeplinkEvents.GET_REFERRAL_DEEPLINK_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkGetReferralDeeplinkEvents.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkResult;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "data", "", "", "", "(Ljava/util/Map;)V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkGetReferralDeeplinkResult extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkGetReferralDeeplinkResult(Map<String, Object> data) {
            super(AnalyticsManager.Action.IMPRESSION, SdkGetReferralDeeplinkEvents.SDK_GET_REFERRAL_DEEPLINK_RESULT, data, SdkGetReferralDeeplinkEvents.GET_REFERRAL_DEEPLINK_FLOW, 1);
            Intrinsics.checkNotNullParameter(data, "data");
        }
    }

    /* JADX INFO: compiled from: SdkGetReferralDeeplinkEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkMainThreadFailure;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkGetReferralDeeplinkMainThreadFailure extends AnalyticsEvent {
        public SdkGetReferralDeeplinkMainThreadFailure() {
            super(AnalyticsManager.Action.ERROR, SdkGetReferralDeeplinkEvents.SDK_GET_REFERRAL_DEEPLINK_MAIN_THREAD_FAILURE, new LinkedHashMap(), SdkGetReferralDeeplinkEvents.GET_REFERRAL_DEEPLINK_FLOW, 1);
        }
    }
}
