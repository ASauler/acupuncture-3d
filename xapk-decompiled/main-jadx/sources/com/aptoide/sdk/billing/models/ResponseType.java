package com.aptoide.sdk.billing.models;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ResponseType.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/aptoide/sdk/billing/models/ResponseType;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "EXTERNAL_PAYMENT", "WEB_PAYMENT_ACTION", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ResponseType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ResponseType[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ResponseType EXTERNAL_PAYMENT = new ResponseType("EXTERNAL_PAYMENT", 0, 0);
    public static final ResponseType WEB_PAYMENT_ACTION = new ResponseType("WEB_PAYMENT_ACTION", 1, 1);
    private final int value;

    private static final /* synthetic */ ResponseType[] $values() {
        return new ResponseType[]{EXTERNAL_PAYMENT, WEB_PAYMENT_ACTION};
    }

    public static EnumEntries<ResponseType> getEntries() {
        return $ENTRIES;
    }

    public static ResponseType valueOf(String str) {
        return (ResponseType) Enum.valueOf(ResponseType.class, str);
    }

    public static ResponseType[] values() {
        return (ResponseType[]) $VALUES.clone();
    }

    private ResponseType(String str, int i, int i2) {
        this.value = i2;
    }

    public final int getValue() {
        return this.value;
    }

    static {
        ResponseType[] responseTypeArr$values = $values();
        $VALUES = responseTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(responseTypeArr$values);
        INSTANCE = new Companion(null);
    }

    /* JADX INFO: compiled from: ResponseType.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/models/ResponseType$Companion;", "", "()V", "fromValue", "Lcom/aptoide/sdk/billing/models/ResponseType;", "value", "", "(Ljava/lang/Integer;)Lcom/aptoide/sdk/billing/models/ResponseType;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ResponseType fromValue(Integer value) {
            ResponseType next;
            Iterator<ResponseType> it = ResponseType.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (value != null && next.getValue() == value.intValue()) {
                    break;
                }
            }
            return next;
        }
    }
}
