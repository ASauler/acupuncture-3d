package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.matomo.Property;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkConsumePurchaseEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkConsumePurchaseProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "RESPONSE_CODE_FROM_CONSUME_PURCHASE_RESULT", "PURCHASE_TOKEN_FROM_CONSUME_PURCHASE_REQUEST", "PURCHASE_TOKEN_FROM_CONSUME_PURCHASE_RESULT", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkConsumePurchaseProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkConsumePurchaseProperties[] $VALUES;
    private final String eventName;
    private final int id;
    private final String key;
    public static final SdkConsumePurchaseProperties RESPONSE_CODE_FROM_CONSUME_PURCHASE_RESULT = new SdkConsumePurchaseProperties("RESPONSE_CODE_FROM_CONSUME_PURCHASE_RESULT", 0, "response_code", SdkConsumePurchaseEvents.SDK_CONSUME_PURCHASE_RESULT, 400);
    public static final SdkConsumePurchaseProperties PURCHASE_TOKEN_FROM_CONSUME_PURCHASE_REQUEST = new SdkConsumePurchaseProperties("PURCHASE_TOKEN_FROM_CONSUME_PURCHASE_REQUEST", 1, "purchase_token", SdkConsumePurchaseEvents.SDK_CONSUME_PURCHASE_REQUEST, 410);
    public static final SdkConsumePurchaseProperties PURCHASE_TOKEN_FROM_CONSUME_PURCHASE_RESULT = new SdkConsumePurchaseProperties("PURCHASE_TOKEN_FROM_CONSUME_PURCHASE_RESULT", 2, "purchase_token", SdkConsumePurchaseEvents.SDK_CONSUME_PURCHASE_RESULT, 411);

    private static final /* synthetic */ SdkConsumePurchaseProperties[] $values() {
        return new SdkConsumePurchaseProperties[]{RESPONSE_CODE_FROM_CONSUME_PURCHASE_RESULT, PURCHASE_TOKEN_FROM_CONSUME_PURCHASE_REQUEST, PURCHASE_TOKEN_FROM_CONSUME_PURCHASE_RESULT};
    }

    public static EnumEntries<SdkConsumePurchaseProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkConsumePurchaseProperties valueOf(String str) {
        return (SdkConsumePurchaseProperties) Enum.valueOf(SdkConsumePurchaseProperties.class, str);
    }

    public static SdkConsumePurchaseProperties[] values() {
        return (SdkConsumePurchaseProperties[]) $VALUES.clone();
    }

    private SdkConsumePurchaseProperties(String str, int i, String str2, String str3, int i2) {
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
        SdkConsumePurchaseProperties[] sdkConsumePurchasePropertiesArr$values = $values();
        $VALUES = sdkConsumePurchasePropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkConsumePurchasePropertiesArr$values);
    }
}
