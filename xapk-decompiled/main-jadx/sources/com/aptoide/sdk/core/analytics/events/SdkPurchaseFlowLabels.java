package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: SdkPurchaseFlowEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowLabels;", "", "()V", "DEVELOPER_PAYLOAD", "", "FAILURE_MESSAGE", "FREE_TRIAL", "OBFUSCATED_ACCOUNT_ID", "ORDER_REFERENCE", "ORIGIN", "PURCHASE_TOKEN", AptoideBillingConstants.RESPONSE_CODE, "SKU", AptoideBillingConstants.SKU_TYPE, "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkPurchaseFlowLabels {
    public static final String DEVELOPER_PAYLOAD = "developer_payload";
    public static final String FAILURE_MESSAGE = "failure_message";
    public static final String FREE_TRIAL = "free_trial";
    public static final SdkPurchaseFlowLabels INSTANCE = new SdkPurchaseFlowLabels();
    public static final String OBFUSCATED_ACCOUNT_ID = "obfuscated_account_id";
    public static final String ORDER_REFERENCE = "order_reference";
    public static final String ORIGIN = "origin";
    public static final String PURCHASE_TOKEN = "purchase_token";
    public static final String RESPONSE_CODE = "response_code";
    public static final String SKU = "sku";
    public static final String SKU_TYPE = "sku_type";

    private SdkPurchaseFlowLabels() {
    }
}
