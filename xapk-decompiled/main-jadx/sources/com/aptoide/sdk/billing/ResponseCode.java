package com.aptoide.sdk.billing;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ResponseCode.kt */
/* JADX INFO: loaded from: classes.dex */
@Deprecated(message = "Use BillingResponseCode Annotation in AptoideBillingClient instead.")
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/aptoide/sdk/billing/ResponseCode;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OK", "USER_CANCELED", "SERVICE_UNAVAILABLE", "BILLING_UNAVAILABLE", "ITEM_UNAVAILABLE", "DEVELOPER_ERROR", "ERROR", "ITEM_ALREADY_OWNED", "ITEM_NOT_OWNED", "FEATURE_NOT_SUPPORTED", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ResponseCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ResponseCode[] $VALUES;
    private final int value;
    public static final ResponseCode OK = new ResponseCode("OK", 0, 0);
    public static final ResponseCode USER_CANCELED = new ResponseCode("USER_CANCELED", 1, 1);
    public static final ResponseCode SERVICE_UNAVAILABLE = new ResponseCode("SERVICE_UNAVAILABLE", 2, 2);
    public static final ResponseCode BILLING_UNAVAILABLE = new ResponseCode("BILLING_UNAVAILABLE", 3, 3);
    public static final ResponseCode ITEM_UNAVAILABLE = new ResponseCode("ITEM_UNAVAILABLE", 4, 4);
    public static final ResponseCode DEVELOPER_ERROR = new ResponseCode("DEVELOPER_ERROR", 5, 5);
    public static final ResponseCode ERROR = new ResponseCode("ERROR", 6, 6);
    public static final ResponseCode ITEM_ALREADY_OWNED = new ResponseCode("ITEM_ALREADY_OWNED", 7, 7);
    public static final ResponseCode ITEM_NOT_OWNED = new ResponseCode("ITEM_NOT_OWNED", 8, 8);
    public static final ResponseCode FEATURE_NOT_SUPPORTED = new ResponseCode("FEATURE_NOT_SUPPORTED", 9, -2);

    private static final /* synthetic */ ResponseCode[] $values() {
        return new ResponseCode[]{OK, USER_CANCELED, SERVICE_UNAVAILABLE, BILLING_UNAVAILABLE, ITEM_UNAVAILABLE, DEVELOPER_ERROR, ERROR, ITEM_ALREADY_OWNED, ITEM_NOT_OWNED, FEATURE_NOT_SUPPORTED};
    }

    public static EnumEntries<ResponseCode> getEntries() {
        return $ENTRIES;
    }

    public static ResponseCode valueOf(String str) {
        return (ResponseCode) Enum.valueOf(ResponseCode.class, str);
    }

    public static ResponseCode[] values() {
        return (ResponseCode[]) $VALUES.clone();
    }

    private ResponseCode(String str, int i, int i2) {
        this.value = i2;
    }

    public final int getValue() {
        return this.value;
    }

    static {
        ResponseCode[] responseCodeArr$values = $values();
        $VALUES = responseCodeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(responseCodeArr$values);
    }
}
