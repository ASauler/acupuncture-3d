package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: SdkBackendRequestEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestLabels;", "", "()V", "BODY", "", "ERROR_MESSAGE", "HEADERS", "METHOD", "NETWORK_SPEED", "PATHS", "QUERIES", AptoideBillingConstants.RESPONSE_CODE, "RESPONSE_MESSAGE", "TYPE", "URL", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkBackendRequestLabels {
    public static final String BODY = "body";
    public static final String ERROR_MESSAGE = "error_message";
    public static final String HEADERS = "headers";
    public static final SdkBackendRequestLabels INSTANCE = new SdkBackendRequestLabels();
    public static final String METHOD = "method";
    public static final String NETWORK_SPEED = "network_speed";
    public static final String PATHS = "paths";
    public static final String QUERIES = "queries";
    public static final String RESPONSE_CODE = "response_code";
    public static final String RESPONSE_MESSAGE = "response_message";
    public static final String TYPE = "type";
    public static final String URL = "url";

    private SdkBackendRequestLabels() {
    }
}
