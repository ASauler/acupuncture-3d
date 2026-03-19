package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.manager.AnalyticsManager;
import java.util.LinkedHashMap;
import kotlin.Metadata;

/* JADX INFO: compiled from: SdkWalletPaymentFlowEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents;", "", "()V", "SDK_WALLET_PAYMENT_EMPTY_DATA", "", "SDK_WALLET_PAYMENT_START", "WALLET_PAYMENT_FLOW", "SdkWalletPaymentEmptyData", "SdkWalletPaymentStart", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkWalletPaymentFlowEvents {
    public static final SdkWalletPaymentFlowEvents INSTANCE = new SdkWalletPaymentFlowEvents();
    public static final String SDK_WALLET_PAYMENT_EMPTY_DATA = "sdk_wallet_payment_empty_data";
    public static final String SDK_WALLET_PAYMENT_START = "sdk_wallet_payment_start";
    public static final String WALLET_PAYMENT_FLOW = "wallet_payment_flow";

    private SdkWalletPaymentFlowEvents() {
    }

    /* JADX INFO: compiled from: SdkWalletPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents$SdkWalletPaymentStart;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWalletPaymentStart extends AnalyticsEvent {
        public SdkWalletPaymentStart() {
            super(AnalyticsManager.Action.IMPRESSION, SdkWalletPaymentFlowEvents.SDK_WALLET_PAYMENT_START, new LinkedHashMap(), SdkWalletPaymentFlowEvents.WALLET_PAYMENT_FLOW, 1);
        }
    }

    /* JADX INFO: compiled from: SdkWalletPaymentFlowEvents.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWalletPaymentFlowEvents$SdkWalletPaymentEmptyData;", "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;", "()V", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SdkWalletPaymentEmptyData extends AnalyticsEvent {
        public SdkWalletPaymentEmptyData() {
            super(AnalyticsManager.Action.ERROR, SdkWalletPaymentFlowEvents.SDK_WALLET_PAYMENT_EMPTY_DATA, new LinkedHashMap(), SdkWalletPaymentFlowEvents.WALLET_PAYMENT_FLOW, 1);
        }
    }
}
