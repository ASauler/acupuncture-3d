package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import kotlin.Metadata;

/* JADX INFO: compiled from: SdkInitializationEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationLabels;", "", "()V", "APP_PACKAGE_NAME", "", "GUEST_ID", "INSTALLED", "MESSAGE", "METHOD", "METHOD_BINDING", "METHOD_URI", "OEMID", "PAYMENT_FLOW_LIST", "REMOVED", "SERVICE", "SERVICE_INSTALL_WALLET_DIALOG", "STATE", AttributionSharedPreferences.UTM_CAMPAIGN_KEY, AttributionSharedPreferences.UTM_CONTENT_KEY, AttributionSharedPreferences.UTM_MEDIUM_KEY, AttributionSharedPreferences.UTM_SOURCE_KEY, AttributionSharedPreferences.UTM_TERM_KEY, "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkInitializationLabels {
    public static final String APP_PACKAGE_NAME = "app_package_name";
    public static final String GUEST_ID = "guest_id";
    public static final String INSTALLED = "installed";
    public static final SdkInitializationLabels INSTANCE = new SdkInitializationLabels();
    public static final String MESSAGE = "message";
    public static final String METHOD = "method";
    public static final String METHOD_BINDING = "binding";
    public static final String METHOD_URI = "uri";
    public static final String OEMID = "oemid";
    public static final String PAYMENT_FLOW_LIST = "payment_flow_list";
    public static final String REMOVED = "removed";
    public static final String SERVICE = "service";
    public static final String SERVICE_INSTALL_WALLET_DIALOG = "install_wallet_dialog";
    public static final String STATE = "state";
    public static final String UTM_CAMPAIGN = "utm_campaign";
    public static final String UTM_CONTENT = "utm_content";
    public static final String UTM_MEDIUM = "utm_medium";
    public static final String UTM_SOURCE = "utm_source";
    public static final String UTM_TERM = "utm_term";

    private SdkInitializationLabels() {
    }
}
