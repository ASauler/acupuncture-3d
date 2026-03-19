package com.aptoide.sdk.core.analytics.events;

import com.aptoide.sdk.core.analytics.matomo.Property;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkAppUpdateAvailableEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "RESULT_FROM_APP_UPDATE_AVAILABLE", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkAppUpdateAvailableProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkAppUpdateAvailableProperties[] $VALUES;
    public static final SdkAppUpdateAvailableProperties RESULT_FROM_APP_UPDATE_AVAILABLE = new SdkAppUpdateAvailableProperties("RESULT_FROM_APP_UPDATE_AVAILABLE", 0, "result", SdkAppUpdateAvailableEvents.SDK_APP_UPDATE_AVAILABLE_RESULT, 100);
    private final String eventName;
    private final int id;
    private final String key;

    private static final /* synthetic */ SdkAppUpdateAvailableProperties[] $values() {
        return new SdkAppUpdateAvailableProperties[]{RESULT_FROM_APP_UPDATE_AVAILABLE};
    }

    public static EnumEntries<SdkAppUpdateAvailableProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkAppUpdateAvailableProperties valueOf(String str) {
        return (SdkAppUpdateAvailableProperties) Enum.valueOf(SdkAppUpdateAvailableProperties.class, str);
    }

    public static SdkAppUpdateAvailableProperties[] values() {
        return (SdkAppUpdateAvailableProperties[]) $VALUES.clone();
    }

    private SdkAppUpdateAvailableProperties(String str, int i, String str2, String str3, int i2) {
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
        SdkAppUpdateAvailableProperties[] sdkAppUpdateAvailablePropertiesArr$values = $values();
        $VALUES = sdkAppUpdateAvailablePropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkAppUpdateAvailablePropertiesArr$values);
    }
}
