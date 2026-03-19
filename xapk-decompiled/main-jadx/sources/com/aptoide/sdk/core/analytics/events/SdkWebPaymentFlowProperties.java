package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.matomo.Property;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkWebPaymentFlowEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "URL_FROM_START", "URL_FROM_LAUNCH_EXTERNAL_PAYMENT", "DEEPLINK_FROM_OPEN_DEEPLINK", "DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK", "DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK", "EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK", "RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT", "ALLOW_FROM_ALLOW_EXTERNAL_APPS", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkWebPaymentFlowProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkWebPaymentFlowProperties[] $VALUES;
    private final String eventName;
    private final int id;
    private final String key;
    public static final SdkWebPaymentFlowProperties URL_FROM_START = new SdkWebPaymentFlowProperties("URL_FROM_START", 0, "url", SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_START, 1600);
    public static final SdkWebPaymentFlowProperties URL_FROM_LAUNCH_EXTERNAL_PAYMENT = new SdkWebPaymentFlowProperties("URL_FROM_LAUNCH_EXTERNAL_PAYMENT", 1, "url", SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_LAUNCH_EXTERNAL_PAYMENT, 1601);
    public static final SdkWebPaymentFlowProperties DEEPLINK_FROM_OPEN_DEEPLINK = new SdkWebPaymentFlowProperties("DEEPLINK_FROM_OPEN_DEEPLINK", 2, "deeplink", SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_OPEN_DEEPLINK, 1610);
    public static final SdkWebPaymentFlowProperties DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK = new SdkWebPaymentFlowProperties("DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK", 3, "deeplink", SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_FAILURE_TO_OPEN_DEEPLINK, 1611);
    public static final SdkWebPaymentFlowProperties DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK = new SdkWebPaymentFlowProperties("DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK", 4, "deeplink", SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_EXECUTE_EXTERNAL_DEEPLINK, 1612);
    public static final SdkWebPaymentFlowProperties EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK = new SdkWebPaymentFlowProperties("EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK", 5, SdkWebPaymentFlowLabels.EXCEPTION, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_FAILURE_TO_OPEN_DEEPLINK, 1620);
    public static final SdkWebPaymentFlowProperties RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT = new SdkWebPaymentFlowProperties("RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT", 6, "result", SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_ERROR_PROCESSING_PURCHASE_RESULT, 1630);
    public static final SdkWebPaymentFlowProperties ALLOW_FROM_ALLOW_EXTERNAL_APPS = new SdkWebPaymentFlowProperties("ALLOW_FROM_ALLOW_EXTERNAL_APPS", 7, SdkWebPaymentFlowLabels.ALLOW, SdkWebPaymentFlowEvents.SDK_WEB_PAYMENT_ALLOW_EXTERNAL_APPS, 1640);

    private static final /* synthetic */ SdkWebPaymentFlowProperties[] $values() {
        return new SdkWebPaymentFlowProperties[]{URL_FROM_START, URL_FROM_LAUNCH_EXTERNAL_PAYMENT, DEEPLINK_FROM_OPEN_DEEPLINK, DEEPLINK_FROM_FAILURE_TO_OPEN_DEEPLINK, DEEPLINK_FROM_EXECUTE_EXTERNAL_DEEPLINK, EXCEPTION_FROM_FAILURE_TO_OPEN_DEEPLINK, RESULT_FROM_ERROR_PROCESSING_PURCHASE_RESULT, ALLOW_FROM_ALLOW_EXTERNAL_APPS};
    }

    public static EnumEntries<SdkWebPaymentFlowProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkWebPaymentFlowProperties valueOf(String str) {
        return (SdkWebPaymentFlowProperties) Enum.valueOf(SdkWebPaymentFlowProperties.class, str);
    }

    public static SdkWebPaymentFlowProperties[] values() {
        return (SdkWebPaymentFlowProperties[]) $VALUES.clone();
    }

    private SdkWebPaymentFlowProperties(String str, int i, String str2, String str3, int i2) {
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
        SdkWebPaymentFlowProperties[] sdkWebPaymentFlowPropertiesArr$values = $values();
        $VALUES = sdkWebPaymentFlowPropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkWebPaymentFlowPropertiesArr$values);
    }
}
