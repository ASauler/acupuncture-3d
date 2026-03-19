package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.matomo.Property;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkQuerySkuDetailsEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "SKUS_FROM_SKU_DETAILS_REQUEST", "SKUS_FROM_SKU_DETAILS_RESULT", "SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS", "SKU_TYPE_FROM_SKU_DETAILS_REQUEST", "SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkQuerySkuDetailsProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkQuerySkuDetailsProperties[] $VALUES;
    private final String eventName;
    private final int id;
    private final String key;
    public static final SdkQuerySkuDetailsProperties SKUS_FROM_SKU_DETAILS_REQUEST = new SdkQuerySkuDetailsProperties("SKUS_FROM_SKU_DETAILS_REQUEST", 0, SdkQuerySkuDetailsLabels.SKUS, SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_REQUEST, 1500);
    public static final SdkQuerySkuDetailsProperties SKUS_FROM_SKU_DETAILS_RESULT = new SdkQuerySkuDetailsProperties("SKUS_FROM_SKU_DETAILS_RESULT", 1, SdkQuerySkuDetailsLabels.SKUS, SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_RESULT, 1501);
    public static final SdkQuerySkuDetailsProperties SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS = new SdkQuerySkuDetailsProperties("SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS", 2, SdkQuerySkuDetailsLabels.SKUS, SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_FAILURE_PARSING_SKUS, 1502);
    public static final SdkQuerySkuDetailsProperties SKU_TYPE_FROM_SKU_DETAILS_REQUEST = new SdkQuerySkuDetailsProperties("SKU_TYPE_FROM_SKU_DETAILS_REQUEST", 3, "sku_type", SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_REQUEST, 1510);
    public static final SdkQuerySkuDetailsProperties SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS = new SdkQuerySkuDetailsProperties("SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS", 4, "sku_type", SdkQuerySkuDetailsEvents.SDK_QUERY_SKU_DETAILS_FAILURE_PARSING_SKUS, 1511);

    private static final /* synthetic */ SdkQuerySkuDetailsProperties[] $values() {
        return new SdkQuerySkuDetailsProperties[]{SKUS_FROM_SKU_DETAILS_REQUEST, SKUS_FROM_SKU_DETAILS_RESULT, SKUS_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS, SKU_TYPE_FROM_SKU_DETAILS_REQUEST, SKU_TYPE_FROM_SKU_DETAILS_FAILURE_PARSING_SKUS};
    }

    public static EnumEntries<SdkQuerySkuDetailsProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkQuerySkuDetailsProperties valueOf(String str) {
        return (SdkQuerySkuDetailsProperties) Enum.valueOf(SdkQuerySkuDetailsProperties.class, str);
    }

    public static SdkQuerySkuDetailsProperties[] values() {
        return (SdkQuerySkuDetailsProperties[]) $VALUES.clone();
    }

    private SdkQuerySkuDetailsProperties(String str, int i, String str2, String str3, int i2) {
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
        SdkQuerySkuDetailsProperties[] sdkQuerySkuDetailsPropertiesArr$values = $values();
        $VALUES = sdkQuerySkuDetailsPropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkQuerySkuDetailsPropertiesArr$values);
    }
}
