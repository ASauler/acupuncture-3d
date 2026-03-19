package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: SdkConsumePurchaseEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkConsumePurchaseLabels;", "", "()V", "PURCHASE_TOKEN", "", AptoideBillingConstants.RESPONSE_CODE, "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkConsumePurchaseLabels {
    public static final SdkConsumePurchaseLabels INSTANCE = new SdkConsumePurchaseLabels();
    public static final String PURCHASE_TOKEN = "purchase_token";
    public static final String RESPONSE_CODE = "response_code";

    private SdkConsumePurchaseLabels() {
    }
}
