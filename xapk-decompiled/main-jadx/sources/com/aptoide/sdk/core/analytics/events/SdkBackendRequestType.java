package com.aptoide.sdk.core.analytics.events;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkBackendRequestEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "PAYMENT_FLOW", "ATTRIBUTION", "WEB_PAYMENT_URL", "TRANSACTION", "INAPP_PURCHASE", "PURCHASES", ViewHierarchyConstants.PURCHASE, "PURCHASE_RESULT_EVENT", "CONSUME_PURCHASE", "SKU_DETAILS", "STORE_DEEPLINK", "GUEST_WALLET", "NEW_VERSION_AVAILABLE", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkBackendRequestType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkBackendRequestType[] $VALUES;
    private final String type;
    public static final SdkBackendRequestType PAYMENT_FLOW = new SdkBackendRequestType("PAYMENT_FLOW", 0, "payment_flow");
    public static final SdkBackendRequestType ATTRIBUTION = new SdkBackendRequestType("ATTRIBUTION", 1, "attribution");
    public static final SdkBackendRequestType WEB_PAYMENT_URL = new SdkBackendRequestType("WEB_PAYMENT_URL", 2, "web_payment_url");
    public static final SdkBackendRequestType TRANSACTION = new SdkBackendRequestType("TRANSACTION", 3, "transaction");
    public static final SdkBackendRequestType INAPP_PURCHASE = new SdkBackendRequestType("INAPP_PURCHASE", 4, "inapp_purchase");
    public static final SdkBackendRequestType PURCHASES = new SdkBackendRequestType("PURCHASES", 5, SdkQueryPurchasesLabels.PURCHASES);
    public static final SdkBackendRequestType PURCHASE = new SdkBackendRequestType(ViewHierarchyConstants.PURCHASE, 6, FirebaseAnalytics.Event.PURCHASE);
    public static final SdkBackendRequestType PURCHASE_RESULT_EVENT = new SdkBackendRequestType("PURCHASE_RESULT_EVENT", 7, "purchase_result_event");
    public static final SdkBackendRequestType CONSUME_PURCHASE = new SdkBackendRequestType("CONSUME_PURCHASE", 8, SdkConsumePurchaseEvents.CONSUME_PURCHASE_FLOW);
    public static final SdkBackendRequestType SKU_DETAILS = new SdkBackendRequestType("SKU_DETAILS", 9, "sku_details");
    public static final SdkBackendRequestType STORE_DEEPLINK = new SdkBackendRequestType("STORE_DEEPLINK", 10, "store_deeplink");
    public static final SdkBackendRequestType GUEST_WALLET = new SdkBackendRequestType("GUEST_WALLET", 11, "guest_wallet");
    public static final SdkBackendRequestType NEW_VERSION_AVAILABLE = new SdkBackendRequestType("NEW_VERSION_AVAILABLE", 12, "new_version_available");

    private static final /* synthetic */ SdkBackendRequestType[] $values() {
        return new SdkBackendRequestType[]{PAYMENT_FLOW, ATTRIBUTION, WEB_PAYMENT_URL, TRANSACTION, INAPP_PURCHASE, PURCHASES, PURCHASE, PURCHASE_RESULT_EVENT, CONSUME_PURCHASE, SKU_DETAILS, STORE_DEEPLINK, GUEST_WALLET, NEW_VERSION_AVAILABLE};
    }

    public static EnumEntries<SdkBackendRequestType> getEntries() {
        return $ENTRIES;
    }

    public static SdkBackendRequestType valueOf(String str) {
        return (SdkBackendRequestType) Enum.valueOf(SdkBackendRequestType.class, str);
    }

    public static SdkBackendRequestType[] values() {
        return (SdkBackendRequestType[]) $VALUES.clone();
    }

    private SdkBackendRequestType(String str, int i, String str2) {
        this.type = str2;
    }

    public final String getType() {
        return this.type;
    }

    static {
        SdkBackendRequestType[] sdkBackendRequestTypeArr$values = $values();
        $VALUES = sdkBackendRequestTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkBackendRequestTypeArr$values);
    }
}
