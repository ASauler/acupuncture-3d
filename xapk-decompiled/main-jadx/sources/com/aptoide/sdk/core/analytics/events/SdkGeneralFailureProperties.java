package com.aptoide.sdk.core.analytics.events;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aptoide.sdk.core.analytics.matomo.Property;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkGeneralFailureEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "STEP_FROM_SERVICE_CONNECTION_EXCEPTION", "SIGNED_DATA_FROM_SIGNATURE_VERIFICATION_FAILURE", "API_KEY_FROM_SIGNATURE_VERIFICATION_FAILURE", "TYPE_FROM_UNEXPECTED_FAILURE", "DATA_FROM_UNEXPECTED_FAILURE", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkGeneralFailureProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkGeneralFailureProperties[] $VALUES;
    private final String eventName;
    private final int id;
    private final String key;
    public static final SdkGeneralFailureProperties STEP_FROM_SERVICE_CONNECTION_EXCEPTION = new SdkGeneralFailureProperties("STEP_FROM_SERVICE_CONNECTION_EXCEPTION", 0, SdkGeneralFailureLabels.STEP, SdkGeneralFailureEvents.SDK_SERVICE_CONNECTION_EXCEPTION, 500);
    public static final SdkGeneralFailureProperties SIGNED_DATA_FROM_SIGNATURE_VERIFICATION_FAILURE = new SdkGeneralFailureProperties("SIGNED_DATA_FROM_SIGNATURE_VERIFICATION_FAILURE", 1, SdkGeneralFailureLabels.SIGNED_DATA, SdkGeneralFailureEvents.SDK_PURCHASE_SIGNATURE_VERIFICATION_FAILURE, TypedValues.PositionType.TYPE_POSITION_TYPE);
    public static final SdkGeneralFailureProperties API_KEY_FROM_SIGNATURE_VERIFICATION_FAILURE = new SdkGeneralFailureProperties("API_KEY_FROM_SIGNATURE_VERIFICATION_FAILURE", 2, SdkGeneralFailureLabels.API_KEY, SdkGeneralFailureEvents.SDK_PURCHASE_SIGNATURE_VERIFICATION_FAILURE, 520);
    public static final SdkGeneralFailureProperties TYPE_FROM_UNEXPECTED_FAILURE = new SdkGeneralFailureProperties("TYPE_FROM_UNEXPECTED_FAILURE", 3, "type", SdkGeneralFailureEvents.SDK_UNEXPECTED_FAILURE, 530);
    public static final SdkGeneralFailureProperties DATA_FROM_UNEXPECTED_FAILURE = new SdkGeneralFailureProperties("DATA_FROM_UNEXPECTED_FAILURE", 4, "data", SdkGeneralFailureEvents.SDK_UNEXPECTED_FAILURE, 540);

    private static final /* synthetic */ SdkGeneralFailureProperties[] $values() {
        return new SdkGeneralFailureProperties[]{STEP_FROM_SERVICE_CONNECTION_EXCEPTION, SIGNED_DATA_FROM_SIGNATURE_VERIFICATION_FAILURE, API_KEY_FROM_SIGNATURE_VERIFICATION_FAILURE, TYPE_FROM_UNEXPECTED_FAILURE, DATA_FROM_UNEXPECTED_FAILURE};
    }

    public static EnumEntries<SdkGeneralFailureProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkGeneralFailureProperties valueOf(String str) {
        return (SdkGeneralFailureProperties) Enum.valueOf(SdkGeneralFailureProperties.class, str);
    }

    public static SdkGeneralFailureProperties[] values() {
        return (SdkGeneralFailureProperties[]) $VALUES.clone();
    }

    private SdkGeneralFailureProperties(String str, int i, String str2, String str3, int i2) {
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
        SdkGeneralFailureProperties[] sdkGeneralFailurePropertiesArr$values = $values();
        $VALUES = sdkGeneralFailurePropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkGeneralFailurePropertiesArr$values);
    }
}
