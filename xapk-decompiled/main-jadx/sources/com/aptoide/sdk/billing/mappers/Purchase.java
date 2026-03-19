package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchasesResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u000bHÆ\u0003J]\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006&"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/Purchase;", "", "uid", "", SdkPurchaseFlowLabels.SKU, "state", "orderUid", "payload", "externalBuyerReference", "created", "verification", "Lcom/aptoide/sdk/billing/mappers/Verification;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Verification;)V", "getCreated", "()Ljava/lang/String;", "getExternalBuyerReference", "getOrderUid", "getPayload", "getSku", "getState", "getUid", "getVerification", "()Lcom/aptoide/sdk/billing/mappers/Verification;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Purchase {
    private final String created;
    private final String externalBuyerReference;
    private final String orderUid;
    private final String payload;
    private final String sku;
    private final String state;
    private final String uid;
    private final Verification verification;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSku() {
        return this.sku;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOrderUid() {
        return this.orderUid;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPayload() {
        return this.payload;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getExternalBuyerReference() {
        return this.externalBuyerReference;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Verification getVerification() {
        return this.verification;
    }

    public final Purchase copy(String uid, String sku, String state, String orderUid, String payload, String externalBuyerReference, String created, Verification verification) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orderUid, "orderUid");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(verification, "verification");
        return new Purchase(uid, sku, state, orderUid, payload, externalBuyerReference, created, verification);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) other;
        return Intrinsics.areEqual(this.uid, purchase.uid) && Intrinsics.areEqual(this.sku, purchase.sku) && Intrinsics.areEqual(this.state, purchase.state) && Intrinsics.areEqual(this.orderUid, purchase.orderUid) && Intrinsics.areEqual(this.payload, purchase.payload) && Intrinsics.areEqual(this.externalBuyerReference, purchase.externalBuyerReference) && Intrinsics.areEqual(this.created, purchase.created) && Intrinsics.areEqual(this.verification, purchase.verification);
    }

    public int hashCode() {
        int iHashCode = ((((((this.uid.hashCode() * 31) + this.sku.hashCode()) * 31) + this.state.hashCode()) * 31) + this.orderUid.hashCode()) * 31;
        String str = this.payload;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.externalBuyerReference;
        return ((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.created.hashCode()) * 31) + this.verification.hashCode();
    }

    public String toString() {
        return "Purchase(uid=" + this.uid + ", sku=" + this.sku + ", state=" + this.state + ", orderUid=" + this.orderUid + ", payload=" + this.payload + ", externalBuyerReference=" + this.externalBuyerReference + ", created=" + this.created + ", verification=" + this.verification + ")";
    }

    public Purchase(String uid, String sku, String state, String orderUid, String str, String str2, String created, Verification verification) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orderUid, "orderUid");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(verification, "verification");
        this.uid = uid;
        this.sku = sku;
        this.state = state;
        this.orderUid = orderUid;
        this.payload = str;
        this.externalBuyerReference = str2;
        this.created = created;
        this.verification = verification;
    }

    public final String getUid() {
        return this.uid;
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getState() {
        return this.state;
    }

    public final String getOrderUid() {
        return this.orderUid;
    }

    public final String getPayload() {
        return this.payload;
    }

    public final String getExternalBuyerReference() {
        return this.externalBuyerReference;
    }

    public final String getCreated() {
        return this.created;
    }

    public final Verification getVerification() {
        return this.verification;
    }
}
