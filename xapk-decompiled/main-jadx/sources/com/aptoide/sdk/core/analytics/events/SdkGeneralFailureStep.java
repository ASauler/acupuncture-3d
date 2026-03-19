package com.aptoide.sdk.core.analytics.events;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkGeneralFailureEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "GET_PURCHASES", "QUERY_SKU_DETAILS", "CONSUME", "START_PURCHASE", "IS_FEATURE_SUPPORTED", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkGeneralFailureStep {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkGeneralFailureStep[] $VALUES;
    private final String type;
    public static final SdkGeneralFailureStep GET_PURCHASES = new SdkGeneralFailureStep("GET_PURCHASES", 0, "get_purchases");
    public static final SdkGeneralFailureStep QUERY_SKU_DETAILS = new SdkGeneralFailureStep("QUERY_SKU_DETAILS", 1, SdkQuerySkuDetailsEvents.QUERY_SKU_DETAILS_FLOW);
    public static final SdkGeneralFailureStep CONSUME = new SdkGeneralFailureStep("CONSUME", 2, "consume");
    public static final SdkGeneralFailureStep START_PURCHASE = new SdkGeneralFailureStep("START_PURCHASE", 3, "start_purchase");
    public static final SdkGeneralFailureStep IS_FEATURE_SUPPORTED = new SdkGeneralFailureStep("IS_FEATURE_SUPPORTED", 4, SdkIsFeatureSupportedEvents.IS_FEATURE_SUPPORTED_FLOW);

    private static final /* synthetic */ SdkGeneralFailureStep[] $values() {
        return new SdkGeneralFailureStep[]{GET_PURCHASES, QUERY_SKU_DETAILS, CONSUME, START_PURCHASE, IS_FEATURE_SUPPORTED};
    }

    public static EnumEntries<SdkGeneralFailureStep> getEntries() {
        return $ENTRIES;
    }

    public static SdkGeneralFailureStep valueOf(String str) {
        return (SdkGeneralFailureStep) Enum.valueOf(SdkGeneralFailureStep.class, str);
    }

    public static SdkGeneralFailureStep[] values() {
        return (SdkGeneralFailureStep[]) $VALUES.clone();
    }

    private SdkGeneralFailureStep(String str, int i, String str2) {
        this.type = str2;
    }

    public final String getType() {
        return this.type;
    }

    static {
        SdkGeneralFailureStep[] sdkGeneralFailureStepArr$values = $values();
        $VALUES = sdkGeneralFailureStepArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkGeneralFailureStepArr$values);
    }
}
