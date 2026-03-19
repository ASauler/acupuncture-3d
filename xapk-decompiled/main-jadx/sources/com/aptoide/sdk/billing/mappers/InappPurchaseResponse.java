package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InappPurchaseResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u000b\u0010#\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0092\u0001\u0010-\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010.J\u0013\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u00020\u0003HÖ\u0001J\t\u00103\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0015¨\u00064"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;", "", "responseCode", "", "uid", "", SdkPurchaseFlowLabels.SKU, "domain", "type", "status", "state", "payload", "created", "buyer", "Lcom/aptoide/sdk/billing/mappers/Buyer;", "order", "Lcom/aptoide/sdk/billing/mappers/Order;", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)V", "getBuyer", "()Lcom/aptoide/sdk/billing/mappers/Buyer;", "getCreated", "()Ljava/lang/String;", "getDomain", "getOrder", "()Lcom/aptoide/sdk/billing/mappers/Order;", "getPayload", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSku", "getState", "getStatus", "getType", "getUid", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class InappPurchaseResponse {
    private final Buyer buyer;
    private final String created;
    private final String domain;
    private final Order order;
    private final String payload;
    private final Integer responseCode;
    private final String sku;
    private final String state;
    private final String status;
    private final String type;
    private final String uid;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Buyer getBuyer() {
        return this.buyer;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Order getOrder() {
        return this.order;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSku() {
        return this.sku;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDomain() {
        return this.domain;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPayload() {
        return this.payload;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCreated() {
        return this.created;
    }

    public final InappPurchaseResponse copy(Integer responseCode, String uid, String sku, String domain, String type, String status, String state, String payload, String created, Buyer buyer, Order order) {
        return new InappPurchaseResponse(responseCode, uid, sku, domain, type, status, state, payload, created, buyer, order);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InappPurchaseResponse)) {
            return false;
        }
        InappPurchaseResponse inappPurchaseResponse = (InappPurchaseResponse) other;
        return Intrinsics.areEqual(this.responseCode, inappPurchaseResponse.responseCode) && Intrinsics.areEqual(this.uid, inappPurchaseResponse.uid) && Intrinsics.areEqual(this.sku, inappPurchaseResponse.sku) && Intrinsics.areEqual(this.domain, inappPurchaseResponse.domain) && Intrinsics.areEqual(this.type, inappPurchaseResponse.type) && Intrinsics.areEqual(this.status, inappPurchaseResponse.status) && Intrinsics.areEqual(this.state, inappPurchaseResponse.state) && Intrinsics.areEqual(this.payload, inappPurchaseResponse.payload) && Intrinsics.areEqual(this.created, inappPurchaseResponse.created) && Intrinsics.areEqual(this.buyer, inappPurchaseResponse.buyer) && Intrinsics.areEqual(this.order, inappPurchaseResponse.order);
    }

    public int hashCode() {
        Integer num = this.responseCode;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.uid;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.sku;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.domain;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.type;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.status;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.state;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.payload;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.created;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Buyer buyer = this.buyer;
        int iHashCode10 = (iHashCode9 + (buyer == null ? 0 : buyer.hashCode())) * 31;
        Order order = this.order;
        return iHashCode10 + (order != null ? order.hashCode() : 0);
    }

    public String toString() {
        return "InappPurchaseResponse(responseCode=" + this.responseCode + ", uid=" + this.uid + ", sku=" + this.sku + ", domain=" + this.domain + ", type=" + this.type + ", status=" + this.status + ", state=" + this.state + ", payload=" + this.payload + ", created=" + this.created + ", buyer=" + this.buyer + ", order=" + this.order + ")";
    }

    public InappPurchaseResponse(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Buyer buyer, Order order) {
        this.responseCode = num;
        this.uid = str;
        this.sku = str2;
        this.domain = str3;
        this.type = str4;
        this.status = str5;
        this.state = str6;
        this.payload = str7;
        this.created = str8;
        this.buyer = buyer;
        this.order = order;
    }

    public /* synthetic */ InappPurchaseResponse(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Buyer buyer, Order order, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, (i & 256) != 0 ? null : str8, (i & 512) != 0 ? null : buyer, (i & 1024) == 0 ? order : null);
    }

    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final String getUid() {
        return this.uid;
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getType() {
        return this.type;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getState() {
        return this.state;
    }

    public final String getPayload() {
        return this.payload;
    }

    public final String getCreated() {
        return this.created;
    }

    public final Buyer getBuyer() {
        return this.buyer;
    }

    public final Order getOrder() {
        return this.order;
    }
}
