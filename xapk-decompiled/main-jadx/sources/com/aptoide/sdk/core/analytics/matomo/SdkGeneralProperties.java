package com.aptoide.sdk.core.analytics.matomo;

import com.aptoide.sdk.core.analytics.AnalyticsContent;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkGeneralProperties.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/aptoide/sdk/core/analytics/matomo/SdkGeneralProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "SDK_VERSION_CODE", "GAME_PACKAGE_NAME", "LANGUAGE", "IS_EMULATOR", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkGeneralProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkGeneralProperties[] $VALUES;
    private final String eventName;
    private final int id;
    private final String key;
    public static final SdkGeneralProperties SDK_VERSION_CODE = new SdkGeneralProperties("SDK_VERSION_CODE", 0, AnalyticsContent.SDK_VERSION_CODE, "general_properties", 1);
    public static final SdkGeneralProperties GAME_PACKAGE_NAME = new SdkGeneralProperties("GAME_PACKAGE_NAME", 1, AnalyticsContent.GAME_PACKAGE_NAME, "general_properties", 10);
    public static final SdkGeneralProperties LANGUAGE = new SdkGeneralProperties("LANGUAGE", 2, AnalyticsContent.LANGUAGE, "general_properties", 20);
    public static final SdkGeneralProperties IS_EMULATOR = new SdkGeneralProperties("IS_EMULATOR", 3, AnalyticsContent.IS_EMULATOR, "general_properties", 30);

    private static final /* synthetic */ SdkGeneralProperties[] $values() {
        return new SdkGeneralProperties[]{SDK_VERSION_CODE, GAME_PACKAGE_NAME, LANGUAGE, IS_EMULATOR};
    }

    public static EnumEntries<SdkGeneralProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkGeneralProperties valueOf(String str) {
        return (SdkGeneralProperties) Enum.valueOf(SdkGeneralProperties.class, str);
    }

    public static SdkGeneralProperties[] values() {
        return (SdkGeneralProperties[]) $VALUES.clone();
    }

    private SdkGeneralProperties(String str, int i, String str2, String str3, int i2) {
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
        SdkGeneralProperties[] sdkGeneralPropertiesArr$values = $values();
        $VALUES = sdkGeneralPropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkGeneralPropertiesArr$values);
    }
}
