package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.matomo.Property;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.logging.type.LogSeverity;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkInitializationEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "OEMID_FROM_ATTRIBUTION_RESULT", "GUEST_ID_FROM_ATTRIBUTION_RESULT", "UTM_SOURCE_FROM_ATTRIBUTION_RESULT", "UTM_MEDIUM_FROM_ATTRIBUTION_RESULT", "UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT", "UTM_TERM_FROM_ATTRIBUTION_RESULT", "UTM_CONTENT_FROM_ATTRIBUTION_RESULT", "PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT", "SERVICE_FROM_SERVICE_CONNECTED", "SERVICE_FROM_SERVICE_CONNECTION_FAILED", "METHOD_FROM_SERVICE_CONNECTED", "METHOD_FROM_SERVICE_CONNECTION_FAILED", "APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER", "STATE_FROM_APP_INSTALLATION_TRIGGER", "MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkInitializationProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkInitializationProperties[] $VALUES;
    private final String eventName;
    private final int id;
    private final String key;
    public static final SdkInitializationProperties OEMID_FROM_ATTRIBUTION_RESULT = new SdkInitializationProperties("OEMID_FROM_ATTRIBUTION_RESULT", 0, SdkInitializationLabels.OEMID, SdkInitializationEvents.SDK_ATTRIBUTION_RESULT, 700);
    public static final SdkInitializationProperties GUEST_ID_FROM_ATTRIBUTION_RESULT = new SdkInitializationProperties("GUEST_ID_FROM_ATTRIBUTION_RESULT", 1, SdkInitializationLabels.GUEST_ID, SdkInitializationEvents.SDK_ATTRIBUTION_RESULT, 710);
    public static final SdkInitializationProperties UTM_SOURCE_FROM_ATTRIBUTION_RESULT = new SdkInitializationProperties("UTM_SOURCE_FROM_ATTRIBUTION_RESULT", 2, SdkInitializationLabels.UTM_SOURCE, SdkInitializationEvents.SDK_ATTRIBUTION_RESULT, 720);
    public static final SdkInitializationProperties UTM_MEDIUM_FROM_ATTRIBUTION_RESULT = new SdkInitializationProperties("UTM_MEDIUM_FROM_ATTRIBUTION_RESULT", 3, SdkInitializationLabels.UTM_MEDIUM, SdkInitializationEvents.SDK_ATTRIBUTION_RESULT, 730);
    public static final SdkInitializationProperties UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT = new SdkInitializationProperties("UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT", 4, SdkInitializationLabels.UTM_CAMPAIGN, SdkInitializationEvents.SDK_ATTRIBUTION_RESULT, 740);
    public static final SdkInitializationProperties UTM_TERM_FROM_ATTRIBUTION_RESULT = new SdkInitializationProperties("UTM_TERM_FROM_ATTRIBUTION_RESULT", 5, SdkInitializationLabels.UTM_TERM, SdkInitializationEvents.SDK_ATTRIBUTION_RESULT, 750);
    public static final SdkInitializationProperties UTM_CONTENT_FROM_ATTRIBUTION_RESULT = new SdkInitializationProperties("UTM_CONTENT_FROM_ATTRIBUTION_RESULT", 6, SdkInitializationLabels.UTM_CONTENT, SdkInitializationEvents.SDK_ATTRIBUTION_RESULT, 760);
    public static final SdkInitializationProperties PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT = new SdkInitializationProperties("PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT", 7, SdkInitializationLabels.PAYMENT_FLOW_LIST, SdkInitializationEvents.SDK_PAYFLOW_RESULT, 770);
    public static final SdkInitializationProperties SERVICE_FROM_SERVICE_CONNECTED = new SdkInitializationProperties("SERVICE_FROM_SERVICE_CONNECTED", 8, "service", SdkInitializationEvents.SDK_SERVICE_CONNECTED, 780);
    public static final SdkInitializationProperties SERVICE_FROM_SERVICE_CONNECTION_FAILED = new SdkInitializationProperties("SERVICE_FROM_SERVICE_CONNECTION_FAILED", 9, "service", SdkInitializationEvents.SDK_SERVICE_CONNECTION_FAILED, 781);
    public static final SdkInitializationProperties METHOD_FROM_SERVICE_CONNECTED = new SdkInitializationProperties("METHOD_FROM_SERVICE_CONNECTED", 10, "method", SdkInitializationEvents.SDK_SERVICE_CONNECTED, 790);
    public static final SdkInitializationProperties METHOD_FROM_SERVICE_CONNECTION_FAILED = new SdkInitializationProperties("METHOD_FROM_SERVICE_CONNECTION_FAILED", 11, "method", SdkInitializationEvents.SDK_SERVICE_CONNECTION_FAILED, 791);
    public static final SdkInitializationProperties APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER = new SdkInitializationProperties("APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER", 12, SdkInitializationLabels.APP_PACKAGE_NAME, SdkInitializationEvents.SDK_APP_INSTALLATION_TRIGGER, LogSeverity.EMERGENCY_VALUE);
    public static final SdkInitializationProperties STATE_FROM_APP_INSTALLATION_TRIGGER = new SdkInitializationProperties("STATE_FROM_APP_INSTALLATION_TRIGGER", 13, "state", SdkInitializationEvents.SDK_APP_INSTALLATION_TRIGGER, 810);
    public static final SdkInitializationProperties MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT = new SdkInitializationProperties("MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT", 14, "message", SdkInitializationEvents.SDK_ATTRIBUTION_RETRY_ATTEMPT, 820);

    private static final /* synthetic */ SdkInitializationProperties[] $values() {
        return new SdkInitializationProperties[]{OEMID_FROM_ATTRIBUTION_RESULT, GUEST_ID_FROM_ATTRIBUTION_RESULT, UTM_SOURCE_FROM_ATTRIBUTION_RESULT, UTM_MEDIUM_FROM_ATTRIBUTION_RESULT, UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT, UTM_TERM_FROM_ATTRIBUTION_RESULT, UTM_CONTENT_FROM_ATTRIBUTION_RESULT, PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT, SERVICE_FROM_SERVICE_CONNECTED, SERVICE_FROM_SERVICE_CONNECTION_FAILED, METHOD_FROM_SERVICE_CONNECTED, METHOD_FROM_SERVICE_CONNECTION_FAILED, APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER, STATE_FROM_APP_INSTALLATION_TRIGGER, MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT};
    }

    public static EnumEntries<SdkInitializationProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkInitializationProperties valueOf(String str) {
        return (SdkInitializationProperties) Enum.valueOf(SdkInitializationProperties.class, str);
    }

    public static SdkInitializationProperties[] values() {
        return (SdkInitializationProperties[]) $VALUES.clone();
    }

    private SdkInitializationProperties(String str, int i, String str2, String str3, int i2) {
        this.key = str2;
        this.eventName = str3;
        this.id = i2;
    }

    @Override // com.aptoide.sdk.core.analytics.matomo.Property
    public String getKey() {
        return this.key;
    }

    @Override // com.aptoide.sdk.core.analytics.matomo.Property
    public String getEventName() {
        return this.eventName;
    }

    @Override // com.aptoide.sdk.core.analytics.matomo.Property
    public int getId() {
        return this.id;
    }

    static {
        SdkInitializationProperties[] sdkInitializationPropertiesArr$values = $values();
        $VALUES = sdkInitializationPropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkInitializationPropertiesArr$values);
    }
}
