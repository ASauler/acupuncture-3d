package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.matomo.Property;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkPurchaseFlowEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0013\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "SKU_FROM_LAUNCH_PURCHASE", "SKU_FROM_PURCHASE_RESULT", "SKU_TYPE_FROM_LAUNCH_PURCHASE", "SKU_TYPE_FROM_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE", "DEVELOPER_PAYLOAD_FROM_LAUNCH_PURCHASE", "ORDER_REFERENCE_FROM_LAUNCH_PURCHASE", "ORIGIN_FROM_LAUNCH_PURCHASE", "OBFUSCATED_ACCOUNT_ID_FROM_LAUNCH_PURCHASE", "FREE_TRIAL_FROM_LAUNCH_PURCHASE", "FAILURE_MESSAGE_FROM_PURCHASE_RESULT", "RESPONSE_CODE_FROM_PURCHASE_RESULT", "PURCHASE_TOKEN_FROM_PURCHASE_RESULT", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkPurchaseFlowProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkPurchaseFlowProperties[] $VALUES;
    private final String eventName;
    private final int id;
    private final String key;
    public static final SdkPurchaseFlowProperties SKU_FROM_LAUNCH_PURCHASE = new SdkPurchaseFlowProperties("SKU_FROM_LAUNCH_PURCHASE", 0, SdkPurchaseFlowLabels.SKU, SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE, 1300);
    public static final SdkPurchaseFlowProperties SKU_FROM_PURCHASE_RESULT = new SdkPurchaseFlowProperties("SKU_FROM_PURCHASE_RESULT", 1, SdkPurchaseFlowLabels.SKU, SdkPurchaseFlowEvents.SDK_PURCHASE_RESULT, 1301);
    public static final SdkPurchaseFlowProperties SKU_TYPE_FROM_LAUNCH_PURCHASE = new SdkPurchaseFlowProperties("SKU_TYPE_FROM_LAUNCH_PURCHASE", 2, "sku_type", SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE, 1310);
    public static final SdkPurchaseFlowProperties SKU_TYPE_FROM_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE = new SdkPurchaseFlowProperties("SKU_TYPE_FROM_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE", 3, "sku_type", SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE, 1311);
    public static final SdkPurchaseFlowProperties DEVELOPER_PAYLOAD_FROM_LAUNCH_PURCHASE = new SdkPurchaseFlowProperties("DEVELOPER_PAYLOAD_FROM_LAUNCH_PURCHASE", 4, SdkPurchaseFlowLabels.DEVELOPER_PAYLOAD, SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE, 1320);
    public static final SdkPurchaseFlowProperties ORDER_REFERENCE_FROM_LAUNCH_PURCHASE = new SdkPurchaseFlowProperties("ORDER_REFERENCE_FROM_LAUNCH_PURCHASE", 5, "order_reference", SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE, 1330);
    public static final SdkPurchaseFlowProperties ORIGIN_FROM_LAUNCH_PURCHASE = new SdkPurchaseFlowProperties("ORIGIN_FROM_LAUNCH_PURCHASE", 6, "origin", SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE, 1340);
    public static final SdkPurchaseFlowProperties OBFUSCATED_ACCOUNT_ID_FROM_LAUNCH_PURCHASE = new SdkPurchaseFlowProperties("OBFUSCATED_ACCOUNT_ID_FROM_LAUNCH_PURCHASE", 7, SdkPurchaseFlowLabels.OBFUSCATED_ACCOUNT_ID, SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE, 1350);
    public static final SdkPurchaseFlowProperties FREE_TRIAL_FROM_LAUNCH_PURCHASE = new SdkPurchaseFlowProperties("FREE_TRIAL_FROM_LAUNCH_PURCHASE", 8, SdkPurchaseFlowLabels.FREE_TRIAL, SdkPurchaseFlowEvents.SDK_LAUNCH_PURCHASE, 1360);
    public static final SdkPurchaseFlowProperties FAILURE_MESSAGE_FROM_PURCHASE_RESULT = new SdkPurchaseFlowProperties("FAILURE_MESSAGE_FROM_PURCHASE_RESULT", 9, SdkPurchaseFlowLabels.FAILURE_MESSAGE, SdkPurchaseFlowEvents.SDK_PURCHASE_RESULT, 1370);
    public static final SdkPurchaseFlowProperties RESPONSE_CODE_FROM_PURCHASE_RESULT = new SdkPurchaseFlowProperties("RESPONSE_CODE_FROM_PURCHASE_RESULT", 10, "response_code", SdkPurchaseFlowEvents.SDK_PURCHASE_RESULT, 1380);
    public static final SdkPurchaseFlowProperties PURCHASE_TOKEN_FROM_PURCHASE_RESULT = new SdkPurchaseFlowProperties("PURCHASE_TOKEN_FROM_PURCHASE_RESULT", 11, "purchase_token", SdkPurchaseFlowEvents.SDK_PURCHASE_RESULT, 1390);

    private static final /* synthetic */ SdkPurchaseFlowProperties[] $values() {
        return new SdkPurchaseFlowProperties[]{SKU_FROM_LAUNCH_PURCHASE, SKU_FROM_PURCHASE_RESULT, SKU_TYPE_FROM_LAUNCH_PURCHASE, SKU_TYPE_FROM_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE, DEVELOPER_PAYLOAD_FROM_LAUNCH_PURCHASE, ORDER_REFERENCE_FROM_LAUNCH_PURCHASE, ORIGIN_FROM_LAUNCH_PURCHASE, OBFUSCATED_ACCOUNT_ID_FROM_LAUNCH_PURCHASE, FREE_TRIAL_FROM_LAUNCH_PURCHASE, FAILURE_MESSAGE_FROM_PURCHASE_RESULT, RESPONSE_CODE_FROM_PURCHASE_RESULT, PURCHASE_TOKEN_FROM_PURCHASE_RESULT};
    }

    public static EnumEntries<SdkPurchaseFlowProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkPurchaseFlowProperties valueOf(String str) {
        return (SdkPurchaseFlowProperties) Enum.valueOf(SdkPurchaseFlowProperties.class, str);
    }

    public static SdkPurchaseFlowProperties[] values() {
        return (SdkPurchaseFlowProperties[]) $VALUES.clone();
    }

    private SdkPurchaseFlowProperties(String str, int i, String str2, String str3, int i2) {
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
        SdkPurchaseFlowProperties[] sdkPurchaseFlowPropertiesArr$values = $values();
        $VALUES = sdkPurchaseFlowPropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkPurchaseFlowPropertiesArr$values);
    }
}
